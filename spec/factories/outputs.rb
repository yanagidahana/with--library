FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :library

    after(:build) do |output|
      output.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end