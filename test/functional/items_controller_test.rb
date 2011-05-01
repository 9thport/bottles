require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

  test "should get abailable" do
    get :abailable
    assert_response :success
  end

  test "should get remaining" do
    get :remaining
    assert_response :success
  end

end
