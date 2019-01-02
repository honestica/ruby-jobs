class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.integer :practitioner_id
      t.datetime :sent_at

      t.timestamps
    end
  end
end
