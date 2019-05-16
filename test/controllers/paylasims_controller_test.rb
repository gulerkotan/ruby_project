require 'test_helper'

class PaylasimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paylasim = paylasims(:one)
  end

  test "should get index" do
    get paylasims_url
    assert_response :success
  end

  test "should get new" do
    get new_paylasim_url
    assert_response :success
  end

  test "should create paylasim" do
    assert_difference('Paylasim.count') do
      post paylasims_url, params: { paylasim: { baslik: @paylasim.baslik, icerik: @paylasim.icerik } }
    end

    assert_redirected_to paylasim_url(Paylasim.last)
  end

  test "should show paylasim" do
    get paylasim_url(@paylasim)
    assert_response :success
  end

  test "should get edit" do
    get edit_paylasim_url(@paylasim)
    assert_response :success
  end

  test "should update paylasim" do
    patch paylasim_url(@paylasim), params: { paylasim: { baslik: @paylasim.baslik, icerik: @paylasim.icerik } }
    assert_redirected_to paylasim_url(@paylasim)
  end

  test "should destroy paylasim" do
    assert_difference('Paylasim.count', -1) do
      delete paylasim_url(@paylasim)
    end

    assert_redirected_to paylasims_url
  end
end
