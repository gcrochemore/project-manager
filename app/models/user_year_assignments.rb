class UserYearAssignments
  attr_accessor :user
  attr_accessor :year

  attr_accessor :user_month_assignments

  def initialize(attributes = {})
    self.attributes = attributes

    self.user_month_assignments = []
    (1..12).each do |month|
        self.user_month_assignments.push(UserMonthAssignments.new(user: user, year: year, month: month))
    end
  end

  def attributes=(attributes)
    @user = attributes[:user]
    @year = attributes[:year]
  end
end