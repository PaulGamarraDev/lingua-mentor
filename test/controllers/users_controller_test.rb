require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get teachers" do
    get users_teachers_url
    assert_response :success
  end

  test "should get students" do
    get users_students_url
    assert_response :success
  end
end
