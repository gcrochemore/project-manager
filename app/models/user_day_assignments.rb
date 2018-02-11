class UserDayAssignments
  attr_accessor :user
  attr_accessor :year
  attr_accessor :month
  attr_accessor :day

  attr_accessor :date
  attr_accessor :assignments
  attr_accessor :total_time
  attr_accessor :day_number

  def initialize(attributes = {})
    self.attributes = attributes

    self.date = Date.new(self.year, self.month, self.day)
    self.assignments = self.user.assignments.where(date: date).order_by_time_desc
    self.total_time = self.assignments.sum(&:time).to_f
    self.day_number = self.date.strftime('%u').to_i
  end

  def attributes=(attributes)
    @user = attributes[:user]
    @year = attributes[:year]
    @month = attributes[:month]
    @day = attributes[:day]
  end
end