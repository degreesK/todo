class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to '/tasks'
    else
      render('tasks/new.html.erb')
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      redirect_to '/tasks'
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/tasks'
  end
end
