require 'test_helper'

class ProspectsControllerTest < ActionController::TestCase
  setup do
    @prospect = prospects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospect" do
    assert_difference('Prospect.count') do
      post :create, prospect: { address: @prospect.address, city: @prospect.city, email_address: @prospect.email_address, first_name: @prospect.first_name, last_name: @prospect.last_name, mobile_phone_number: @prospect.mobile_phone_number, state: @prospect.state, zip: @prospect.zip }
    end

    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should show prospect" do
    get :show, id: @prospect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prospect
    assert_response :success
  end

  test "should update prospect" do
    patch :update, id: @prospect, prospect: { address: @prospect.address, city: @prospect.city, email_address: @prospect.email_address, first_name: @prospect.first_name, last_name: @prospect.last_name, mobile_phone_number: @prospect.mobile_phone_number, state: @prospect.state, zip: @prospect.zip }
    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should destroy prospect" do
    assert_difference('Prospect.count', -1) do
      delete :destroy, id: @prospect
    end

    assert_redirected_to prospects_path
  end
end
