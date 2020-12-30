FactoryBot.define do
  factory :library do
    title {"タイトル"}
    impressions {"アウトプット"}
    category_id {2}
    lank_id {2}
    author {"著者"}
    syuppan {"文庫"}
    read_id {2}
    association :user
  end
end


