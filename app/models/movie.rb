class Movie < ApplicationRecord
    has_many :movie_tag_relations, dependent: :delete_all
    has_many :tags, through: :movie_tag_relations
end
