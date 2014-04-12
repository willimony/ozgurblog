require 'test_helper'

class MessagesTest < ActionDispatch::IntegrationTest
  # visitor visits home page
  # notices contact link on nav bar
  # clicks on it
  # fills contact form with valid data
  # and visitor redirected to root path
  # with message: 'Mesajınız başarılı bir şekilde iletildi!'
  
  setup do
    @success_message = 'Mesajınız başarılı bir şekilde iletildi!'
    @message = {
      title: 'test',
      content: 'text text text <3',
      email: 'testing@example.com'
    }
  end
  
  test 'visit home page' do
    get root_path
    assert_response :success
  end
  
  test 'visit contact form' do
    get new_message_path
    assert_response :success
    assert assigns(:message)
  end
  
  test 'should create new message for valid attr' do    
    assert_difference('Message.count', +1) do
      post messages_path, message: @message
    end
    
    assert_redirected_to root_path
    assert_equal @success_message, flash[:notice]
  end
  
  test 'should render form again if form invalid' do
    @message['email'] = 'invalid.email.com'
    
    assert_no_difference('Message.count') do
      post messages_path, message: @message
    end
    
    assert assigns(:message).errors.any?
    assert_not redirect?
    assert_template 'messages/new'
  end
  
end
