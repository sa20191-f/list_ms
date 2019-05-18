class UserlistsController < ApplicationController
    # POST /lists
  def create
        
        @search = ListVinculation.search(params[:user_id])
        
        render json: @search
         
  end
end
