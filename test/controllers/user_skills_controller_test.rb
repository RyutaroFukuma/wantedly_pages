require 'test_helper'

class UserSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get plus" do
    get user_skills_plus_url
    assert_response :success
  end

end
