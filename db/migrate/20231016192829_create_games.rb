class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string  :user_w_name # временное решение, чтобы обкатывать
      t.string  :user_b_name # временное решение, чтобы обкатывать
      t.string  :field
      t.boolean :game_end
      t.string  :active_user

      t.timestamps

      # в целом эту миграцию надо будет потом править, после перхода на постгрес
    end
  end
end
