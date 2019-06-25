class WslistsController < ApplicationController
    #http://192.168.99.101:4000/wslists/wsdl
    soap_service namespace: 'urn:WashOutLists', camelize_wsdl: :lower
    soap_action "viewList",
                :args => { :listId => :integer},
                :return => { :listValid => :boolean, :listId => :integer, :listName => :string, :listImage => :string}

    def viewList
        if (List.exists?(id: params[:listId]))
            @list = List.find(params[:listId])
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
