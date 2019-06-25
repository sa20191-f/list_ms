class ListVinculation < ApplicationRecord
  belongs_to :list
  #devuelve las listas vinculadas a user_id  
  scope :search, ->(params){where("user_id LIKE ?",params)}
end
