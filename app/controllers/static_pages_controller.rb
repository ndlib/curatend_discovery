# Simple controller to serve static pages
class StaticPagesController < ApplicationController
  def home
    respond_to(:html)
  end
end
