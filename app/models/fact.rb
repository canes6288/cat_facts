class Fact < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  def self.get_cat_facts(num = 30)
    cat_facts = HTTParty.get("http://catfacts-api.appspot.com/api/facts?number=#{num}")
    JSON.parse(cat_facts)["facts"]
  end

  def add_as_favorite(user)
    user.favorites.find_or_create_by(
      user_id: user.id,
      fact_id: self.id
      )
  end
end
