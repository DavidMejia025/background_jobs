class DelayTasksController < ApplicationController
  before_action :set_delay_task, only: [:show, :edit, :update, :destroy]

  # GET /delay_tasks
  # GET /delay_tasks.json
  def index
    @delay_tasks = DelayTask.all
  end

  # GET /delay_tasks/1
  # GET /delay_tasks/1.json
  def show
    @delay_task  = DelayTask.find(params[:id])
  end

  # GET /delay_tasks/new
  def new
    @delay_task = DelayTask.new
  DelayTask.delay(queue: "delaytask",priority:20,run_at: 10.from_now).informe(4)
   flash[:notice] = "doing the background job."
  end

  # GET /delay_tasks/1/edit
  def edit
  end

  # POST /delay_tasks
  # POST /delay_tasks.json
  def create
    @delay_task = DelayTask.create(id: params[:id])


    respond_to do |format|
      if @delay_task.save
        format.html { redirect_to @delay_task, notice: 'Delay task was successfully created.' }
        format.json { render :show, status: :created, location: @delay_task }
      else
        format.html { render :new }
        format.json { render json: @delay_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delay_tasks/1
  # PATCH/PUT /delay_tasks/1.json
  def update
    respond_to do |format|
      if @delay_task.update(delay_task_params)
        format.html { redirect_to @delay_task, notice: 'Delay task was successfully updated.' }
        format.json { render :show, status: :ok, location: @delay_task }
      else
        format.html { render :edit }
        format.json { render json: @delay_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delay_tasks/1
  # DELETE /delay_tasks/1.json
  def destroy
    @delay_task.destroy
    respond_to do |format|
      format.html { redirect_to delay_tasks_url, notice: 'Delay task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delay_task
      @delay_task = DelayTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delay_task_params
      params.fetch(:delay_task, {})
    end
end
