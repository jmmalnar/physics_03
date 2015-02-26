require 'test_helper'

class ProjectileControllerTest < ActionController::TestCase
  test "should get free_fall" do
    get :free_fall
    assert_response :success
  end

end
