class Recipe < ApplicationRecord
  has_many :line_items, inverse_of: :order
  belongs_to :user, required: true
  belongs_to :category, required: true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
  :s3_protocol => 'https',
  :s3_host_name => ENV['S3_HOST_NAME'],
  :path => ENV['S3_PATH'],
  :storage => 's3',
  :s3_region => ENV['AWS_REGION']
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  mount_uploader :image, ImageUploader
end
