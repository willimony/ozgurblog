require "spec_helper"

describe Category do
  before(:each) do
    category = FactoryGirl.create(:category)
  end
  it 'has a valid name' do
    
    category.should be_valid
  end
  
  it 'has a unique name' do
    a = FactoryGirl.create(:category)
    a.should be_valid
  end
  
  #it 'is invalid without name'
  #it 'is invalid without unique name'
end