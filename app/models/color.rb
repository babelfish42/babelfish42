class Color < ActiveRecord::Base
	belongs_to :product
  
  validates :title, :image_url, :presence => true
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
 
end
