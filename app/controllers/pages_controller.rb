class PagesController < ApplicationController
  
  def random
    p = Book.first.pages.sample
    redirect_to page_path(p)
  end
  
  def show
    @page = Page.find(params[:id])
  end
end
