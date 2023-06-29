class PagesController < ApplicationController
  def index
    @personajes = Character.all
  end
end
