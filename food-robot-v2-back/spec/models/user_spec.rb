require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :encrypted_password }
    it { should validate_presence_of :username }
    it { should validate_presence_of :access_level }
    
    # it { should validate_format_of ... } - complete when password and username requirements are decided

    it { should validate_uniqueness_of :username }
  end

  describe 'relationships' do
    # to be filled in when subsequent models are defined
  end
end
