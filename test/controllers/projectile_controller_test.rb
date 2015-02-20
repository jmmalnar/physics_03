require 'test_helper'

class ProjectileControllerTest < ActionController::TestCase
  test "should get projectile" do
    get :projectile
    assert_response :success
  end

end
