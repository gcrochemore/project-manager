class UserMonthProjectBundlesAssignments
  attr_accessor :user
  attr_accessor :year
  attr_accessor :month
  attr_accessor :project
  attr_accessor :project_bundle

  attr_accessor :total_time

  def initialize(attributes = {})
    self.attributes = attributes

    begin_time = Date.new(self.year, self.month, 1)
    end_time = Date.new((self.month < 11 ? self.year : self.year + 1), (self.month < 11 ? self.month + 1 : 1), 1)

    self.total_time = (self.project_bundle ? self.project_bundle.assignments_by_user(self.user).where('date >= ? AND date < ?', begin_time, end_time).sum(&:time).to_f :
                       (self.project ? self.project.assignments_without_project_bundle_by_user(self.user).where('date >= ? AND date < ?', begin_time, end_time).sum(&:time).to_f : 0))
  end

  def attributes=(attributes)
    @user = attributes[:user]
    @year = attributes[:year]
    @month = attributes[:month]
    @project = attributes[:project]
    @project_bundle = attributes[:project_bundle]
  end
end