class ResultsController < ApplicationController
  def mainresults
    @search = Sunspot.search Recipe, User, Circle do
      fulltext params[:search]
    end
    @results = @search.results
  end
end
