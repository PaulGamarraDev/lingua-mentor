require "test_helper"

class TeachingLanguageSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teaching_language_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get teaching_language_sessions_create_url
    assert_response :success
  end

  test "should get index" do
    get teaching_language_sessions_index_url
    assert_response :success
  end

  test "should get show" do
    get teaching_language_sessions_show_url
    assert_response :success
  end

  test "should get new" do
    get teaching_language_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get teaching_language_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get teaching_language_sessions_destroy_url
    assert_response :success
  end
end
