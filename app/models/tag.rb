class Tag < ApplicationRecord
    has_many :movie_tag_relations, dependent: :delete_all
    has_many :movie, through: :movie_tag_relations
end
