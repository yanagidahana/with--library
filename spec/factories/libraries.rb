FactoryBot.define do
  factory :library do
    title          { Faker::Book.title }
    impressions    { Faker::Book.impressions }
    category_id    { Faker::Book.category_id }
    lank_id        { Faker::Book.lank_id }
    author         { Faker::Book.author }
    syuppan        { Faker::Book.syuppan }
    read_id        { Faker::Book.read_id }
    user           { Faker::Book.user }
  end
end


