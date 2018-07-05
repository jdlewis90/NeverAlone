class Post < ApplicationRecord
    belongs_to :user

    def to_param
        "#{id}"
    end
end
