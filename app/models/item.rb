class Item < ActiveRecord::Base
  belongs_to :category

  scope :only_enabled, where(enable: 1)

end
