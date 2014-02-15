require 'test_helper'

class PolitecnicosControllerTest < ActionController::TestCase
  setup do
    @politecnico = politecnicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:politecnicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create politecnico" do
    assert_difference('Politecnico.count') do
      post :create, politecnico: { apellido: @politecnico.apellido, materia: @politecnico.materia, nombre: @politecnico.nombre }
    end

    assert_redirected_to politecnico_path(assigns(:politecnico))
  end

  test "should show politecnico" do
    get :show, id: @politecnico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @politecnico
    assert_response :success
  end

  test "should update politecnico" do
    patch :update, id: @politecnico, politecnico: { apellido: @politecnico.apellido, materia: @politecnico.materia, nombre: @politecnico.nombre }
    assert_redirected_to politecnico_path(assigns(:politecnico))
  end

  test "should destroy politecnico" do
    assert_difference('Politecnico.count', -1) do
      delete :destroy, id: @politecnico
    end

    assert_redirected_to politecnicos_path
  end
end
