class CreatePaylasims < ActiveRecord::Migration[5.2]
  def change
    create_table :paylasims do |t|
      t.string :baslik
      t.text :icerik

      t.timestamps
    end
  end
end
