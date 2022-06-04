class User < ApplicationRecord
    # validates_presence_of :name
    validates_uniqueness_of :email
end
