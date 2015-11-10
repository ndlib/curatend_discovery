# Simple controller to serve static pages
class StaticPagesController < ApplicationController
  layout 'main'

  def home
    respond_to :html
  end
end
