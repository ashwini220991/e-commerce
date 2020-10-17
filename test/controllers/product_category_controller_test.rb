require 'test_helper'

class ProductCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get product_category_show_url
    assert_response :success
  end

end
