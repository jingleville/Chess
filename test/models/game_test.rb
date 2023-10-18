# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  active_user :string
#  field       :string
#  game_end    :boolean
#  user_b_name :string
#  user_w_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
