require 'test_helper'

class MyListingsControllerTest < ActionController::TestCase
  setup do
    @my_listing = my_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_listing" do
    assert_difference('MyListing.count') do
      post :create, my_listing: { description: @my_listing.description, name: @my_listing.name, price: @my_listing.price }
    end

    assert_redirected_to my_listing_path(assigns(:my_listing))
  end

  test "should show my_listing" do
    get :show, id: @my_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_listing
    assert_response :success
  end

  test "should update my_listing" do
    patch :update, id: @my_listing, my_listing: { description: @my_listing.description, name: @my_listing.name, price: @my_listing.price }
    assert_redirected_to my_listing_path(assigns(:my_listing))
  end

  test "should destroy my_listing" do
    assert_difference('MyListing.count', -1) do
      delete :destroy, id: @my_listing
    end

    assert_redirected_to my_listings_path
  end
end
