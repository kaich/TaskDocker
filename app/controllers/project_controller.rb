class ProjectController < ApplicationController

  def index
    @project = Project.all
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @projects }
    end
  end

end
