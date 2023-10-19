class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string     :field
      t.boolean    :game_end
      t.string     :active_user
      t.references :user_1
      t.references :user_2

      t.timestamps

      # в целом эту миграцию надо будет потом править, после перхода на постгрес
    end
  end
end