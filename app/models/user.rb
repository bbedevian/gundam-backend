class User < ApplicationRecord
    has_many :inventories
    has_many :items, through: :inventories
    has_many :user_gundams
    has_many :gundams, through: :user_gundams
end
