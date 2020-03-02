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
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
