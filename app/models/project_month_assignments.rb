class ProjectMonthAssignments
  attr_accessor :project
  attr_accessor :year
  attr_accessor :month

  attr_accessor :total_time
  attr_accessor :project_day_assignments
  attr_accessor :project_month_bundles_assignments

  def initialize(attributes = {})
    self.attributes = attributes

    self.project_day_assignments = []
    (1..31).each do |day|
        if Date.valid_date? year, month, day
            self.project_day_assignments.push(ProjectDayAssignments.new(project: project, year: year, month: month, day: day))
        end
    end

    self.project_month_bundles_assignments = []

    self.project_month_bundles_assignments.push(ProjectMonthProjectBundlesAssignments.new(year: year, month: month, project: project))
    self.project.project_bundles.each do |project_bundle|
        self.project_month_bundles_assignments.push(ProjectMonthProjectBundlesAssignments.new(year: year, month: month, project_bundle: project_bundle))
    end

    self.total_time = self.project_day_assignments.sum(&:total_time)
  end

  def attributes=(attributes)
    @project = attributes[:project]
    @year = attributes[:year]
    @month = attributes[:month]
  end
end