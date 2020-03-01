# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  content_body :text
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  concert_id   :integer
#
# Indexes
#
#  index_comments_on_concert_id  (concert_id)
#
# Foreign Keys
#
#  concert_id  (concert_id => concerts.id)
#
require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
