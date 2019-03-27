class SearchController < ApplicationController
  def index
    @nrel_face = NrelFacade.new(params)
  end
end
