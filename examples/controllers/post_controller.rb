class PostsController < Rambutan::Base
  def index
    render 'posts/index'
  end
end