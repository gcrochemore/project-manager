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

  def assignments
    Assignment.where(task_id: [self.all_bundle_tasks.pluck(:id)])
  end

  def assignments_by_user user
    self.assignments.where(user: user)
  end

  def all_bundle_tasks
    tasks = self.tasks
    sub_tasks = Task.where(task_id: [tasks.pluck(:id)])
    sub_sub_tasks = Task.where(task_id: [sub_tasks.pluck(:id)])
    sub_sub_sub_tasks = Task.where(task_id: [sub_sub_tasks.pluck(:id)])
    sub_sub_sub_sub_tasks = Task.where(task_id: [sub_sub_sub_tasks.pluck(:id)])

    return tasks + sub_tasks + sub_sub_tasks + sub_sub_sub_tasks + sub_sub_sub_sub_tasks
  end

  def to_s
    self.name
  end
end
