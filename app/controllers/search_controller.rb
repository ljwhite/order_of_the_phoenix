class SearchController < ApplicationController

  def index
    search_results = SearchResult.new
    @members = search_results.members(params[:house])
  end
end
