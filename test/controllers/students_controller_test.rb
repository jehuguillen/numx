require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get students_dashboard_url
    assert_response :success
  end

  test "should get profile" do
    get students_profile_url
    assert_response :success
  end

end
