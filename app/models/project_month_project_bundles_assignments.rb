class ProjectMonthProjectBundlesAssignments
  attr_accessor :year
  attr_accessor :month
  attr_accessor :project
  attr_accessor :project_bundle
  attr_accessor :assignments
  attr_accessor :assignments_by_users

  attr_accessor :total_time

  def initialize(attributes = {})
    self.attributes = attributes

    begin_time = Date.new(self.year, self.month, 1)
    end_time = Date.new((self.month < 11 ? self.year : self.year + 1), (self.month < 11 ? self.month + 1 : 1), 1)

    self.assignments = (self.project_bundle ? self.project_bundle.assignments :
                                              (self.project ? self.project.assignments_without_project_bundle : 0))
                                              .where('date >= ? AND date < ?', begin_time, end_time)

    self.assignments_by_users = self.assignments.group(:user).sum(:time)

    self.total_time = (self.assignments ? self.assignments.sum(&:time).to_f : 0)
  end

  def attributes=(attributes)
    @year = attributes[:year]
    @month = attributes[:month]
    @project = attributes[:project]
    @project_bundle = attributes[:project_bundle]
  end
end