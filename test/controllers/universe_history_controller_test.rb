require 'test_helper'

class UniverseHistoryControllerTest < ActionController::TestCase
  test "should get universe_history" do
    get :universe_history
    assert_response :success
  end

end
