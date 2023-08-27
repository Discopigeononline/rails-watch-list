class BookmarksController < ApplicationController
  before_action :set_list

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
