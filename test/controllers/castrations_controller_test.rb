require 'test_helper'

class CastrationsControllerTest < ActionController::TestCase
  setup do
    @castration = castrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castration" do
    assert_difference('Castration.count') do
      post :create, castration: { place: @castration.place, price: @castration.price, when: @castration.when }
    end

    assert_redirected_to castration_path(assigns(:castration))
  end

  test "should show castration" do
    get :show, id: @castration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castration
    assert_response :success
  end

  test "should update castration" do
    patch :update, id: @castration, castration: { place: @castration.place, price: @castration.price, when: @castration.when }
    assert_redirected_to castration_path(assigns(:castration))
  end

  test "should destroy castration" do
    assert_difference('Castration.count', -1) do
      delete :destroy, id: @castration
    end

    assert_redirected_to castrations_path
  end
end
