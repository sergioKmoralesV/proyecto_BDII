require 'test_helper'

class PalabrasControllerTest < ActionController::TestCase
  setup do
    @palabra = palabras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palabras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palabra" do
    assert_difference('Palabra.count') do
      post :create, palabra: { text: @palabra.text }
    end

    assert_redirected_to palabra_path(assigns(:palabra))
  end

  test "should show palabra" do
    get :show, id: @palabra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palabra
    assert_response :success
  end

  test "should update palabra" do
    patch :update, id: @palabra, palabra: { text: @palabra.text }
    assert_redirected_to palabra_path(assigns(:palabra))
  end

  test "should destroy palabra" do
    assert_difference('Palabra.count', -1) do
      delete :destroy, id: @palabra
    end

    assert_redirected_to palabras_path
  end
end
