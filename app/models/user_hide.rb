class UserHide < ApplicationRecord
    has_many_attached :image
    has_secure_password
end
