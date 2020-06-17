class StepSerializer < ActiveModel::Serializer
  attributes :id, :heading, :content, :order, :image_url
  
  belongs_to :project

  def image
    return unless object.image.attached?

    object.image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    Rails.application.routes.url_helpers.rails_blob_path(object.image) if object.image.attachment
  end
end
