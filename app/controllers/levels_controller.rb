class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end
end
