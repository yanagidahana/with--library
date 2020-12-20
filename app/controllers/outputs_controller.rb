class OutputsController < ApplicationController
  def index
    @output = Output.new
    @library = Library.find(params[:library_id])
    @outputs = @library.outputs.includes(:user)
  end

  def create
    @library = Library.find(params[:library_id])
    @output = @library.outputs.new(output_params)
    if @output.save
      redirect_to library_outputs_path(@library)
    else
      @outputs = @library.outputs.includes(:user)
      render :index
    end
  end

  private

  def output_params
    params.require(:output).permit(:content).merge(user_id: current_user.id)
  end
end
