class Read < ApplicationRecord
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: '文学・評論'},
    {id: 2, name: '人文・思想'},
    {id: 3, name: '社会・政治'},
    {id: 4, name: 'ノンフィクション'},
    {id: 5, name: '歴史・地理'},
    {id: 6, name: 'ビジネス・経済'},
    {id: 7, name: '投資・金融・会社経営'},
    {id: 8, name: '科学・テクノロジー'},
    {id: 9, name: '医学・薬学'},
    {id: 10, name: 'コンピュータ・IT'},
    {id: 11, name: 'アート・建築・デザイン'},
    {id: 12, name: '趣味・実用'},
    {id: 13, name: 'スポーツ・アウトドア'},
    {id: 14, name: '資格・検定・就職'},
    {id: 15, name: '暮らし・健康・子育て'},
    {id: 16, name: '旅行ガイド・マップ'},
    {id: 17, name: '語学・辞事典・年鑑'},
    {id: 18, name: '教育・学参・受験'},
    {id: 19, name: '絵本・児童書'},
    {id: 20, name: 'マンガ'},
    {id: 21, name: 'ライトノベル'},
    {id: 22, name: 'BL'},
    {id: 23, name: 'タレント写真集'},
    {id: 24, name: 'エンターテイメント'},
    {id: 25, name: '雑誌'},
    {id: 26, name: '楽譜・スコア・音楽書'},
    {id: 27, name: 'アダルト'},
    {id: 28, name: 'その他'},
    ]

    include ActiveHash::Associations
    has_many :library
end
