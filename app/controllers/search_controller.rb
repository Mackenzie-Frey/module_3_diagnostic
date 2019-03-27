class SearchController < ApplicationController
  def index
    data = NrelService.new(params)
    binding.pry
    @nrel_facade = NrelFacade.new(data)
  end
end
