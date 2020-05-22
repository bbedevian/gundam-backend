class Gundam < ApplicationRecord
    has_many :user_gundams
    has_many :users, through: :user_gundams
end
