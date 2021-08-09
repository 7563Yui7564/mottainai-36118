class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '選択してください'},
    { id: 1, name: 'リビング'},
    { id: 2, name: 'ダイニング'},
    { id: 3, name: 'キッチン'},
    { id: 4, name: '寝室'},
    { id: 5, name: 'クローゼット'},
    { id: 6, name: 'お風呂'},
    { id: 7, name: '洗面所'},
    { id: 8, name: 'トイレ'},
    { id: 9, name: '玄関'},
    { id: 10, name: '子供部屋'},

    { id: 11, name: 'ペット'},
    { id: 12, name: 'その他'},
  ]
end