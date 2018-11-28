class Topic < ApplicationRecord
  belongs_to :sub
  # always plural for has_many
  # if you were doing has_one it would be singular ":comment"
  has_many :comments
end


    # sub
    #   |
    # topics
    #   |
    # comments
