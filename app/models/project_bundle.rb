class ProjectBundle < ApplicationRecord
  belongs_to :project
  has_many :tasks

  def update_estimated_time
    self.estimated_time = self.tasks.without_parent_task.sum(:estimated_time)
    self.save
  end

  def planned_time
    self.tasks.without_parent_task.sum(:planned_time)
  end

  def consumed_time
    self.tasks.without_parent_task.sum(:consumed_time)
  end

  def remaining_time
    self.tasks.without_parent_task.sum(:remaining_time)
  end

  def to_s
    self.name
  end
end
