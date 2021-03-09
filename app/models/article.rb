class Article < ApplicationRecord
    has :category

    validate_presence_of :title, :content

    scope :alphabetical, -> {order('title')}
    scope :active, -> {where(active: true)}
end
