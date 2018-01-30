class ProjectsController < ApplicationController
  authorize_resource
  before_action :set_project, only: [:show, :edit, :update, :destroy, :show_backlog, :show_assignments]
  # GET /projects
  def index
    @q = Project.ransack(params[:q])
    @projects = @q.result.page(params[:page])
  end
  # GET /projects/1
  def show

  end

  def show_assignments
    start_date = (params[:start_date] ? DateTime.parse(params[:start_date]) : DateTime.now)
    year = start_date.strftime('%Y').to_i
    month = start_date.strftime('%m').to_i

    @project_month_assignment = ProjectMonthAssignments.new(project: @project, year: year, month: month)
  end

  def show_backlog

  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params

      params.require(:project).permit(:name, :organization_id, :bug_tracker)

    end
end
