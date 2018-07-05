class Post < ApplicationRecord
    def to_param
        "#{id}"
    end
end
