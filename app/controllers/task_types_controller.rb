class TaskTypesController < ApplicationController
  authorize_resource
  before_action :set_task_type, only: [:show, :edit, :update, :destroy]
  # GET /task_types
  def index
    @q = TaskType.ransack(params[:q])
    @task_types = @q.result.page(params[:page])
  end
  # GET /task_types/1
  def show
  end

  # GET /task_types/new
  def new
    @task_type = TaskType.new
  end

  # GET /task_types/1/edit
  def edit
  end

  # POST /task_types
  def create
    @task_type = TaskType.new(task_type_params)

    if @task_type.save
      redirect_to @task_type, notice: 'Task type was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /task_types/1
  def update
    if @task_type.update(task_type_params)
      redirect_to @task_type, notice: 'Task type was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /task_types/1
  def destroy
    @task_type.destroy
    redirect_to task_types_url, notice: 'Task type was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_type
      @task_type = TaskType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_type_params

      params.require(:task_type).permit(:name)

    end
end
