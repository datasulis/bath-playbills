class HomeController < ApplicationController
  
  def index
    @samples = Page.all.sample(6)
  end
end