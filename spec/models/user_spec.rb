require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create(name: "Tony", last_name: "Jortons", email: "Tony@mail.com", password: "12345", password_confirmation: "12345")
  end

  describe 'Validations' do

    it 'should validate product is created' do
      expect(@user).to be_present
    end

    it "should be created with a password and password confirmation fields" do 
      @user.password = nil
      @user.save
      expect(@user.password).to_not be_present

      @user.password_confirmation = nil
      @user.save
      expect(@user.password_confirmation).to_not be_present

    end 

    it "should have matching password and password confirmations" do
      expect(@user.password).to eq(@user.password_confirmation)

      @user.password_confirmation = "456"
      @user.save
      expect(@user.password).not_to eq(@user.password_confirmation)
    end

    it "should have a unique email" do
      @user = User.new(name: "Tony", last_name: "Jortons", email: "Tony@mail.com", password: "12345", password_confirmation: "12345")
      @user.validate
      expect(@user.errors.full_messages).not_to be_empty
    end
    
    it "should have a password minimum length of 5" do
      @user.password = '123'
      @user.save
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 5 characters)")   
    end

  end

  describe '.authenticate_with_credentials' do
    it "should be authenticated successfully if email contains whitespace" do
      @user = User.new(name: "Tony", last_name: "Jortons", email: "  Tony@mail.com   ", password: "12345", password_confirmation: "12345")
      expect(@user.errors.full_messages).to be_empty
    end

    it "should be authenticated successfully if email contains wrong case" do
      @user = User.new(name: "Tony", last_name: "Jortons", email: "ToNy@mail.CoM", password: "12345", password_confirmation: "12345")
      expect(@user.errors.full_messages).to be_empty
    end

  end


end


