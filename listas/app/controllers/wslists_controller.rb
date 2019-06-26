class WslistsController < ApplicationController
    #http://192.168.99.101:4000/wslists/wsdl
    soap_service namespace: 'urn:WashOutLists', camelize_wsdl: :lower
    soap_action "viewList",
                :args => { :listEmail => :string},
                :return => { :listValid => :boolean, :listId => :integer, :listName => :string, :listImage => :string}

    def viewList
        if (List.exists?(email: params[:listEmail]))
            #@list = List.find(params[:listId])
            @list = List.searchEmail( params[:listEmail] )[-1]
            id = @list.id
            name = @list.name
            image = @list.image
            render :soap => { :listValid => true, :listId => id, :listName => name,
                :listImage => image}
        else
            render :soap => { :listValid => false, :listId => 0, :listName => "",
                :listImage => ""}
        end
    end
                     
end                     
