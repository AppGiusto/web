require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Giusto"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Giusto"
  end

  test "should get video" do
    get :video
    assert_response :success
    assert_select "title", "Video | Giusto"
  end

  test "should get download" do
    get :download
    assert_response :success
    assert_select "title", "Download | Giusto"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | Giusto"
  end

  test "should get team" do
    get :team
    assert_response :success
    assert_select "title", "Team | Giusto"
  end

  test "should get street_cred" do
    get :street_cred
    assert_response :success
    assert_select "title", "Street Cred | Giusto"
  end

  test "should get press" do
    get :press
    assert_response :success
    assert_select "title", "Press | Giusto"
  end

  test "should get settings" do
    get :settings
    assert_response :success
    assert_select "title", "Settings | Giusto"
  end

   test "should get settings" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Giusto"
  end
end
