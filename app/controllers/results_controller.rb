class ResultsController < ApplicationController
    before_filter :initialize_cart
  def index
      query=params[:q]
        @youtube_search=YoutubeSearch.new
      @youtube_search.search query
      @videos=@youtube_search.videos
  end
end

