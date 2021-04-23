require 'test_helper'

class Users　showControllerTest < ActionDispatch::IntegrationTest
  test 'should get edit' do
    get users　show_edit_url
    assert_response :success
  end

  test 'should get update' do
    get users　show_update_url
    assert_response :success
  end
end
