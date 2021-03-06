# == Schema Information
#
# Table name: concerts
#
#  id         :integer          not null, primary key
#  band       :string
#  city       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Concert < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, presence: true , length: {minimum:5}
  validates :band, presence: true
  validates :city, presence: true
end
