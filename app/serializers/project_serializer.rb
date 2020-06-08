class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :images
  has_many :steps
end
