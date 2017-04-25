class Fact < ApplicationRecord

  def self.get_cat_facts
    cat_facts = HTTParty.get("http://catfacts-api.appspot.com/api/facts?number=30")
    JSON.parse(cat_facts)["facts"]
  end
end
