class AddContentToFacts < ActiveRecord::Migration[5.0]
  def change
    add_column :facts, :content, :string
  end
end
