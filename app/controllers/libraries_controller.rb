class LibrariesController < ApplicationController

  def index
  end

  def new
   @library = Library.new
  end

  def create
    @library= Library.new(library_params)
    if @library.save
      redirect_to root_path
    else
      render :new
    end  
  end



  private

  def library_params
    params.require(:library).permit(:title, :impressions, :category_id, :lank_id, :author, :syuppan_id, :read)
  end
end

