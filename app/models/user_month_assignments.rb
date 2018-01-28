class UserMonthAssignments
  attr_accessor :user
  attr_accessor :year
  attr_accessor :month

  attr_accessor :total_time
  attr_accessor :user_day_assignments
  attr_accessor :user_month_projects_assignments

  def initialize(attributes = {})
    self.attributes = attributes

    self.user_day_assignments = []
    (1..31).each do |day|
        if Date.valid_date? year, month, day
            self.user_day_assignments.push(UserDayAssignments.new(user: user, year: year, month: month, day: day))
        end
    end

    self.user_month_projects_assignments = []
    Project.all.each do |project|
        self.user_month_projects_assignments.push(UserMonthProjectsAssignments.new(user: user, year: year, month: month, project: project))
    end

    self.total_time = self.user_day_assignments.sum(&:total_time)
  end

  def attributes=(attributes)
    @user = attributes[:user]
    @year = attributes[:year]
    @month = attributes[:month]
  end
end