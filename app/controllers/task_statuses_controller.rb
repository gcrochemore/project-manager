class TaskStatusesController < ApplicationController
  authorize_resource
  before_action :set_task_status, only: [:show, :edit, :update, :destroy]
  # GET /task_statuses
  def index
    @q = TaskStatus.ransack(params[:q])
    @task_statuses = @q.result.page(params[:page])
  end
  # GET /task_statuses/1
  def show
  end

  # GET /task_statuses/new
  def new
    @task_status = TaskStatus.new
  end

  # GET /task_statuses/1/edit
  def edit
  end

  # POST /task_statuses
  def create
    @task_status = TaskStatus.new(task_status_params)

    if @task_status.save
      redirect_to @task_status, notice: 'Task status was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /task_statuses/1
  def update
    if @task_status.update(task_status_params)
      redirect_to @task_status, notice: 'Task status was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /task_statuses/1
  def destroy
    @task_status.destroy
    redirect_to task_statuses_url, notice: 'Task status was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_status
      @task_status = TaskStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_status_params
      params.require(:task_status).permit(:name, :order)
    end
end
