class Comment < ApplicationRecord
  belongs_to :blog

  # validates :link, uniqueness: { scope: :blog_id }
end
