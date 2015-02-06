require 'test_helper'

class CosmologyControllerTest < ActionController::TestCase
  test "should get cosmology" do
    get :cosmology
    assert_response :success
  end

  test "should get brief_history" do
    get :brief_history
    assert_response :success
  end

end
