require 'test_helper'

class AtolyelersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atolyeler = atolyelers(:one)
  end

  test "should get index" do
    get atolyelers_url
    assert_response :success
  end

  test "should get new" do
    get new_atolyeler_url
    assert_response :success
  end

  test "should create atolyeler" do
    assert_difference('Atolyeler.count') do
      post atolyelers_url, params: { atolyeler: { picture_url: @atolyeler.picture_url } }
    end

    assert_redirected_to atolyeler_url(Atolyeler.last)
  end

  test "should show atolyeler" do
    get atolyeler_url(@atolyeler)
    assert_response :success
  end

  test "should get edit" do
    get edit_atolyeler_url(@atolyeler)
    assert_response :success
  end

  test "should update atolyeler" do
    patch atolyeler_url(@atolyeler), params: { atolyeler: { picture_url: @atolyeler.picture_url } }
    assert_redirected_to atolyeler_url(@atolyeler)
  end

  test "should destroy atolyeler" do
    assert_difference('Atolyeler.count', -1) do
      delete atolyeler_url(@atolyeler)
    end

    assert_redirected_to atolyelers_url
  end
end
