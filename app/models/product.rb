class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  is_impressionable
  acts_as_list
end
