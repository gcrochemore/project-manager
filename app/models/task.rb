class Task < ApplicationRecord
  belongs_to :task_type, optional: true
  belongs_to :task_status, optional: true
  belongs_to :project
  belongs_to :project_bundle, optional: true
  belongs_to :task, optional: true
  has_many :tasks

  before_save :update_estimated_time
  after_save :update_parent_estimated_time

  scope :without_parent_task, -> { where(task: nil) }

  def update_estimated_time
    if !self.tasks.empty?
        self.estimated_time = self.tasks.sum(&:estimated_time)
    end
  end

  def update_parent_estimated_time
    if !self.task.nil?
        self.task.update_estimated_time
        self.task.save
    elsif !self.project_bundle.nil?
        self.project_bundle.update_estimated_time
    end
  end
end
