class Project < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  has_many :steps
end
