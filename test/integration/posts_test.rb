require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test 'should visit posts path' do
    get posts_path
    assert_response :success
  end
  
  test 'ensure only show published posts' do
    get posts_path
    puts assigns(:posts).empty?
  end
end
