FactoryBot.define do
  factory :user do
    transient do
      encrypted_password { "#{SecureRandom.base64(10)}Password123!" } # update when password requirements are defined
    end

    factory :staff_user do
      email { "staff@denverfoodrescue.org" }
      username { "dfr_staff" } # update ""
      access_level { 0 }
    end

    factory :volunteer_user do
      email { "mr.robot@volunteers.com" }
      username { "dfr_volunteer" } # update ""
      access_level { 1 }
    end
  end
end
