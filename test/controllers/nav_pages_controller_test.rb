require 'test_helper'

class NavPagesControllerTest < ActionController::TestCase
  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Help" do
    get :Help
    assert_response :success
  end

  test "should get Blog" do
    get :Blog
    assert_response :success
  end

  test "should get Status" do
    get :Status
    assert_response :success
  end

  test "should get Jobs" do
    get :Jobs
    assert_response :success
  end

  test "should get Terms" do
    get :Terms
    assert_response :success
  end

  test "should get Privacy" do
    get :Privacy
    assert_response :success
  end

  test "should get Cookies" do
    get :Cookies
    assert_response :success
  end

  test "should get Ads_info" do
    get :Ads_info
    assert_response :success
  end

   test "should get Brand" do
    get :Brand
    assert_response :success
  end

  test "should get Advertise" do
    get :Advertise
    assert_response :success
  end

  test "should get Businesses" do
    get :Businesses
    assert_response :success
  end

  test "should get Media" do
    get :Media
    assert_response :success
  end

  test "should get Developers" do
    get :Developers
    assert_response :success
  end

  test "should get Directory" do
    get :Directory
    assert_response :success
  end

end
