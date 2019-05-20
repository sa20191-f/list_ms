class SearchlistsController < ApplicationController
    # POST /lists
  def create
        
        @search = List.search(params[:name])
        
        render json: @search
         
  end
end
