# == Schema Information
#
# Table name: pins
#
#  id                 :integer          not null, primary key
#  description        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :user_id


  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
                       content_type: {content_type: ['image/jpeg','image/jpg', 'image/png' , 'image/gif' ]} ,
                       size: { less_than: 5.megabytes}


  belongs_to :user
  has_attached_file :image, styles: {medium: "320x240>"}

end
