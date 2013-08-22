class ProjectsController < ApplicationController

  before_action :find_project, only: [:show, :rules, :worries, :edit, :update, :destroy]
  before_action :require_login

  def index
    @projects = Project.all
  end

  def show
    @items = @project.user_stories
    @new_item = Item.new(project: @project, category: Category.user_story)
  end

  def rules
    @items = @project.rules
    @new_item = Item.new(project: @project, category: Category.rule)
    render 'show'
  end

  def worries
    @items = @project.worries
    @new_item = Item.new(project: @project, category: Category.worry)
    render 'show'
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.title = params[:project][:title]

    if @project.save
      redirect_to
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @project.title = params[:project][:title]

    if @project.save
      redirect_to projects_url
    else
      render 'new'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url
  end

private

  def find_project
    @project = Project.find(params[:id])
  end
end
