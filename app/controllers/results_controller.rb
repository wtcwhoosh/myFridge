class ResultsController < ApplicationController
  def mainresults
    @search = Sunspot.search User, Circle do
      fulltext params[:search]
    end
    @results = @search.results
    @invitation = Invitation.new
  end
end
