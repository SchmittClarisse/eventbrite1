class Event < ApplicationRecord
    belongs_to :admin, class_name: "User", foreign_key: "user_id", dependent: :destroy
    has_many :attendances, dependent: :destroy
end
