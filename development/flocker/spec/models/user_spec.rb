require 'spec_helper'


describe User do
  context 'without an email address' do
    it 'is not valid' do
      user = User.new
      user.should_not be_valid
    end

    it 'fails validation' do
      expect(User.new).to have(1).error_on(:email)
    end
  end
  context 'not unique email address' do
    it 'fails validation' do
     User.create!(username: 'test', email: 'test@test.com')
       expect(User.new(email: 'test@test.com')).to have(1).error_on(:email)
     end 
  end 
    context 'not unique username' do
    it 'fails validation' do
     User.create!(username: 'test', email: 'test@test.com')
       expect(User.new(username: 'test')).to have(1).error_on(:username)
     end
  end


end
