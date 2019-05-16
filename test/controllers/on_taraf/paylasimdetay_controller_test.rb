require 'test_helper'

class OnTaraf::PaylasimdetayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_paylasimdetay_index_url
    assert_response :success
  end

end
