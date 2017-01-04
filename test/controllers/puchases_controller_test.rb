require 'test_helper'

class PuchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puchase = puchases(:one)
  end

  test "should get index" do
    get puchases_url
    assert_response :success
  end

  test "should get new" do
    get new_puchase_url
    assert_response :success
  end

  test "should create puchase" do
    assert_difference('Puchase.count') do
      post puchases_url, params: { puchase: { cost: @puchase.cost, name: @puchase.name } }
    end

    assert_redirected_to puchase_url(Puchase.last)
  end

  test "should show puchase" do
    get puchase_url(@puchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_puchase_url(@puchase)
    assert_response :success
  end

  test "should update puchase" do
    patch puchase_url(@puchase), params: { puchase: { cost: @puchase.cost, name: @puchase.name } }
    assert_redirected_to puchase_url(@puchase)
  end

  test "should destroy puchase" do
    assert_difference('Puchase.count', -1) do
      delete puchase_url(@puchase)
    end

    assert_redirected_to puchases_url
  end
end
