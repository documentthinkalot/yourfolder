class TopController < ApplicationController
  def index
    @articles = Article.order("created_at desc").all
  end
end
