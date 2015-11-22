require 'test_helper'

class TextosControllerTest < ActionController::TestCase
  setup do
    @texto = textos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texto" do
    assert_difference('Texto.count') do
      post :create, texto: { nombre: @texto.nombre, ruta: @texto.ruta }
    end

    assert_redirected_to texto_path(assigns(:texto))
  end

  test "should show texto" do
    get :show, id: @texto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texto
    assert_response :success
  end

  test "should update texto" do
    patch :update, id: @texto, texto: { nombre: @texto.nombre, ruta: @texto.ruta }
    assert_redirected_to texto_path(assigns(:texto))
  end

  test "should destroy texto" do
    assert_difference('Texto.count', -1) do
      delete :destroy, id: @texto
    end

    assert_redirected_to textos_path
  end
end
