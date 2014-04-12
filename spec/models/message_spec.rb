require "spec_helper"

describe Message do
  #it 'should validate presence of title'
  #it 'should validate presence of content'
  #it 'should validate presence of email'
  
  NON_OK_EMAILS = %w(this_is_bad.com bad.jpg bad.xml.com@ baad.baad.baad_email)
  OK_EMAILS = %w(yigitsadic@gmail.com test@example.com email_adress_12@example.com okay_32@host.com)

  #it 'should validate email'
    
#  OK_EMAILS.each do |email|
#    it { should allow_value(email).for(:email) }
#  end
  
#  NON_OK_EMAILS.each do |email|
#    it { should_not allow_value(email).for(:email) }
#  end
end