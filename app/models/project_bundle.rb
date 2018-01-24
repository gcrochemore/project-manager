class ProjectBundle < ApplicationRecord
  belongs_to :project
  has_many :tasks

  def update_estimated_time
    self.estimated_time = self.tasks.without_parent_task.sum(:estimated_time)
    self.save
  end
end
