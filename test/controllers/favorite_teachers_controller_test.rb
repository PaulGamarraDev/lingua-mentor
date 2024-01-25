require "test_helper"

class FavoriteTeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_teachers_index_url
    assert_response :success
  end

  test "should get create" do
    get favorite_teachers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_teachers_destroy_url
    assert_response :success
  end
end
