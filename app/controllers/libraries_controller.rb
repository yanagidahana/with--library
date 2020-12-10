class LibrariesController < ApplicationController
  def new
    @library = Library.new
  end
end
