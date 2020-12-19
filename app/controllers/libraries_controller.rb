class LibrariesController < ApplicationController

  def index
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

  def destroy
    @library = Library.find(params[:id])
    library.destroy
    redirect_to root_path
  end


  private

  def library_params
    params.require(:library).permit(:title, :impressions, :category_id, :lank_id, :author, :syuppan, :read_id)
  end
end
