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
class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :name, :band, :city, :comments
end
