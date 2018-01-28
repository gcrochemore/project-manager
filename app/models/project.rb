class Project < ApplicationRecord
  belongs_to :organization
  has_many :tasks
  has_many :project_bundles

  def assignments_by_user user
    Assignment.where(user: user, task: [self.tasks.pluck(:id)])
  end

  def assignments_without_project_bundle_by_user user
    Assignment.where('task_id IN (?) AND task_id NOT IN (?) AND user_id = ?', self.tasks.pluck(:id), self.all_project_bundles_tasks.pluck(:id), user.id)
  end

  def all_project_bundles_tasks
    all_project_bundles_tasks = []
    self.project_bundles.each do |project_bundle|
        all_project_bundles_tasks += project_bundle.all_bundle_tasks
    end
    return all_project_bundles_tasks
  end

  def to_s
    self.name
  end
end
