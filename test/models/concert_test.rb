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
require 'test_helper'

class ConcertTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
