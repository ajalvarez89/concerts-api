# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  rol_id          :integer          not null
#
# Indexes
#
#  index_users_on_rol_id  (rol_id)
#
# Foreign Keys
#
#  rol_id  (rol_id => rols.id)
#
class User < ApplicationRecord
  has_secure_password
  #ralations
  belongs_to :rol
  has_many :comments
  #valitadions
  validates_uniqueness_of   :email
end
