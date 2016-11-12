require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get teachers_profile_url
    assert_response :success
  end

end
