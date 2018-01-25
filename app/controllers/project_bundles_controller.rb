class ProjectBundlesController < ApplicationController
  authorize_resource
  before_action :set_project_bundle, only: [:show, :edit, :update, :destroy]
  # GET /project_bundles
  def index
    @q = ProjectBundle.ransack(params[:q])
    @project_bundles = @q.result.page(params[:page])
  end
  # GET /project_bundles/1
  def show
  end

  # GET /project_bundles/new
  def new
    @project_bundle = ProjectBundle.new
  end

  # GET /project_bundles/1/edit
  def edit
  end

  # POST /project_bundles
  def create
    @project_bundle = ProjectBundle.new(project_bundle_params)

    if @project_bundle.save
      redirect_to @project_bundle, notice: 'Project bundle was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /project_bundles/1
  def update
    if @project_bundle.update(project_bundle_params)
      redirect_to @project_bundle, notice: 'Project bundle was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /project_bundles/1
  def destroy
    @project_bundle.destroy
    redirect_to project_bundles_url, notice: 'Project bundle was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_bundle
      @project_bundle = ProjectBundle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_bundle_params

      params.require(:project_bundle).permit(:name, :project_id, :estimated_time)

    end
end
