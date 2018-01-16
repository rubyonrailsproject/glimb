require 'test_helper'

class NeurosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neuro = neuros(:one)
  end

  test "should get index" do
    get neuros_url
    assert_response :success
  end

  test "should get new" do
    get new_neuro_url
    assert_response :success
  end

  test "should create neuro" do
    assert_difference('Neuro.count') do
      post neuros_url, params: { neuro: {  } }
    end

    assert_redirected_to neuro_url(Neuro.last)
  end

  test "should show neuro" do
    get neuro_url(@neuro)
    assert_response :success
  end

  test "should get edit" do
    get edit_neuro_url(@neuro)
    assert_response :success
  end

  test "should update neuro" do
    patch neuro_url(@neuro), params: { neuro: {  } }
    assert_redirected_to neuro_url(@neuro)
  end

  test "should destroy neuro" do
    assert_difference('Neuro.count', -1) do
      delete neuro_url(@neuro)
    end

    assert_redirected_to neuros_url
  end
end
