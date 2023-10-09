class WelcomesController < ApplicationController

  def index
    @section = Section.last
  end
  
  def about
    @document - Document.last
  end
end
