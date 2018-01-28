class Task < ApplicationRecord
  belongs_to :task_type, optional: true
  belongs_to :task_status, optional: true
  belongs_to :project
  belongs_to :project_bundle, optional: true
  belongs_to :task, optional: true
  has_many :tasks
  has_many :assignments

  before_save :update_time
  after_save :update_parent_time
  after_save :update_parent_task_status

  scope :without_parent_task, -> { where(task: nil) }
  scope :first_task_to_begin, -> { order(:begin_date).first }
  scope :last_task_to_end, -> { order('end_date DESC').first }
  scope :task_status_not_null, -> { where('task_status_id is not null') }

  def update_time
    self.consumed_time = 0
    self.planned_time = 0
    if !self.tasks.empty?
        self.estimated_time = self.tasks.where('estimated_time > 0').sum(&:estimated_time).to_f
        self.consumed_time = self.tasks.where('consumed_time > 0').sum(&:consumed_time).to_f
        self.remaining_time = self.tasks.where('remaining_time > 0').sum(&:remaining_time).to_f
        self.planned_time = self.tasks.where('planned_time > 0').sum(&:planned_time).to_f
        self.begin_date = self.tasks.first_task_to_begin.begin_date
        self.end_date = self.tasks.last_task_to_end.end_date
    elsif !self.assignments.empty?
        self.begin_date = (!self.assignments.first_on_task.nil? ? self.assignments.first_on_task.date : nil)
        self.end_date = (!self.assignments.last_on_task.nil? ? self.assignments.last_on_task.date : nil)
    end

    if !self.assignments.empty?
        self.consumed_time += self.assignments.consumed.sum(&:time).to_f
        self.planned_time += self.assignments.planned.sum(&:time).to_f
    end
  end

  def update_parent_time
    if !self.task.nil?
        self.task.update_time
        self.task.save
    elsif !self.project_bundle.nil?
        self.project_bundle.update_estimated_time
    end
  end

  def update_task_status
    if !self.tasks.empty?
        status = self.tasks.task_status_not_null.includes(:task_status).order("'task_statuses.order desc'").first
        self.task_status = (!status.nil? ? status.task_status : nil)
        self.save
        self.update_parent_task_status
    end
  end

  def update_parent_task_status
    if !self.task.nil?
        self.task.update_task_status
    end
  end

  def label_for_select_rails_admin
    self.identifier.to_s + ' ' + self.name.to_s
  end
end
