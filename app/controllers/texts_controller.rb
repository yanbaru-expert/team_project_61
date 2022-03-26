class TextsController < ApplicationController

  def index
    @texts = Text.where(genre: RAILS_GENRE_LIST)
  end

<<<<<<< HEAD
  def show; end
end
=======
  def show
    @text = Text.find(params[:id])
  end
end
>>>>>>> 79b12f9ce25c22abfbb99eb8c40754bdd0262b8d
