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
class ConcertLogginSerializer < ActiveModel::Serializer
  attributes :id, :name, :band, :city

  has_many :comments
end
