class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: RAILS_GENRE_LIST)
  end

  def show
    @text = Text.find(params[:id])
  end
end
