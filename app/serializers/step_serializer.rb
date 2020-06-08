class StepSerializer < ActiveModel::Serializer
  attributes :id, :heading, :content, :order
  belongs_to :project
end
