require 'test_helper'

class MateriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materium = materia(:one)
  end

  test "should get index" do
    get materia_url, as: :json
    assert_response :success
  end

  test "should create materium" do
    assert_difference('Materium.count') do
      post materia_url, params: { materium: { disciplina: @materium.disciplina } }, as: :json
    end

    assert_response 201
  end

  test "should show materium" do
    get materium_url(@materium), as: :json
    assert_response :success
  end

  test "should update materium" do
    patch materium_url(@materium), params: { materium: { disciplina: @materium.disciplina } }, as: :json
    assert_response 200
  end

  test "should destroy materium" do
    assert_difference('Materium.count', -1) do
      delete materium_url(@materium), as: :json
    end

    assert_response 204
  end
end
