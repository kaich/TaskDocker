class ProjectsController < ApplicationController

  def index
    @project = Project.all
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @projects }
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:model])
    
    respond_to do |wants|
      if @project.save
        flash[:notice] = 'model was successfully created.'
        wants.html { redirect_to(@project) }
        wants.xml { render :xml => @project, :status => :created, :location => @project }
      else
        wants.html { render :action => "new" }
        wants.xml { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end
  

end
