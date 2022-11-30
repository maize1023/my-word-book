require 'test_helper'

class VocabulariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vocabularies_index_url
    assert_response :success
  end

end
