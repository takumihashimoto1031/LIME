class CreateLimes < ActiveRecord::Migration[6.1]
  def change
    create_table :limes do |t|
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
