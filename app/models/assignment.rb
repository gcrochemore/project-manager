class Assignment < ApplicationRecord
  include ActiveModel::Dirty

  belongs_to :user
  belongs_to :task

  scope :consumed, -> { where(consumed: true) }
  scope :planned, -> { where(consumed: false) }
  scope :first_on_task, -> { date_not_null.order(:date).first }
  scope :last_on_task, -> { date_not_null.order('date DESC').first }
  scope :date_not_null, -> { where('date IS NOT NULL') }
  scope :order_by_date_desc, -> { order('date DESC') }
  scope :order_by_time_desc, -> { order('time DESC') }
  scope :order_by_user, -> { order(:user_id) }

  after_save :update_task_time

  def update_task_time
    if task_id_changed?
        if !task_id_was.nil?
            task_was = Task.find(task_id_was)
            task_was.update_time
            task_was.save
        end
        if !self.task.nil?
            task.update_time
            task.save
        end
    end
  end

  def label_for_select_rails_admin
    self.user.to_s + ' ' + date.to_s + ' ' + time.to_s
  end
end
