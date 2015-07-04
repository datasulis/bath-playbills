class HomeController < ApplicationController
  
  def index
    @samples = Page.all.sample(3)
  end
end