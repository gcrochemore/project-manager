class Project < ApplicationRecord
  belongs_to :organization
  has_many :tasks
  has_many :project_bundles

  def assignments_by_user user
    self.assignments.where(user: user)
  end

  def assignments_without_project_bundle
    self.assignments.where('task_id NOT IN (?)', self.all_project_bundles_tasks.pluck(:id))
  end

  def assignments_without_project_bundle_by_user user
    self.assignments_without_project_bundle.where(user: user.id)
  end

  def assignments
    Assignment.where(task: [self.tasks.pluck(:id)])
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
