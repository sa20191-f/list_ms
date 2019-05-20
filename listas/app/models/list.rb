class List < ApplicationRecord
    has_many :song_vinculations
    has_many :list_vinculations
    scope :search, ->(params){where("name LIKE ?",params)}
end
