require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get crear" do
    get usuarios_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get usuarios_actualizar_url
    assert_response :success
  end

  test "should get editar" do
    get usuarios_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get usuarios_eliminar_url
    assert_response :success
  end

end
