class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :task

  scope :consumed, -> { where(consumed: true) }
  scope :planned, -> { where(consumed: false) }
  scope :first_on_task, -> { date_not_null.order(:date).first }
  scope :last_on_task, -> { date_not_null.order('date DESC').first }
  scope :date_not_null, -> { where('date IS NOT NULL') }

  after_save :update_task_time

  def update_task_time
    task.update_time
    task.save
  end

  def label_for_select_rails_admin
    self.user.to_s + ' ' + date.to_s + ' ' + time.to_s
  end
end
