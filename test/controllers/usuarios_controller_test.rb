require 'test_helper'

class usersControllerTest < ActionDispatch::IntegrationTest
  test "should get crear" do
    get users_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get users_actualizar_url
    assert_response :success
  end

  test "should get editar" do
    get users_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get users_eliminar_url
    assert_response :success
  end

end
