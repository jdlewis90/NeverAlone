class User < ApplicationRecord
    has_many :posts

    def to_param
        "#{username}"
    end

end
