require 'test_helper'

class OnTaraf::AnasayfaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_anasayfa_index_url
    assert_response :success
  end

end
