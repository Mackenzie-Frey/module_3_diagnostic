class SearchController < ApplicationController
  def index
    data = NrelService.new(params)
    @nrel_facade = NrelFacade.new(data)
  end
end
