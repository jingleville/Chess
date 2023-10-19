class CreateBids < ActiveRecord::Migration[7.1]
  def change
    create_table :bids do |t|
      t.references :user
      t.string     :name
      t.integer    :access_key

      t.timestamps
    end
  end
end
