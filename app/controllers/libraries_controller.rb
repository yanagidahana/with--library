class LibrariesController < ApplicationController

  def index
    @library = Library.order("created_at DESC")
  end

  def show
    @library = Library.find(params[:id])
  end

  def new
   @library = Library.new
  end

  def create
    @library= Library.new(library_params)
    @library.user_id = current_user.id
    if @library.save
      redirect_to root_path
    else
      render :new
    end  
  end

  private

  def library_params
    params.require(:library).permit(:title, :impressions, :category_id, :lank_id, :author, :syuppan, :read_id)
  end
end
