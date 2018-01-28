class UserMonthProjectsAssignments
  attr_accessor :user
  attr_accessor :year
  attr_accessor :month
  attr_accessor :project

  attr_accessor :user_month_project_bundles_assignments
  attr_accessor :total_time

  def initialize(attributes = {})
    self.attributes = attributes

    self.user_month_project_bundles_assignments = []
    self.user_month_project_bundles_assignments.push(UserMonthProjectBundlesAssignments.new(user: user, year: year, month: month, project: project))
    self.project.project_bundles.each do |project_bundle|
        self.user_month_project_bundles_assignments.push(UserMonthProjectBundlesAssignments.new(user: user, year: year, month: month, project_bundle: project_bundle))
    end

    begin_time = Date.new(self.year, self.month, 1)
    end_time = Date.new((self.month < 11 ? self.year : self.year + 1), (self.month < 11 ? self.month + 1 : 1), 1)

    self.total_time = self.project.assignments_by_user(user).where('date >= ? AND date < ?', begin_time, end_time).sum(&:time).round(2).to_f
  end

  def attributes=(attributes)
    @user = attributes[:user]
    @year = attributes[:year]
    @month = attributes[:month]
    @project = attributes[:project]
  end
end