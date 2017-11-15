class StaticController < ApplicationController
  def welcome
    @welcome_page = true
  end
end
