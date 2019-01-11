class CreateSlackChannel < ActiveRecord::Migration[5.2]
  def change
    create_table :slack_channels do |t|
      t.string :environment
      t.string :code
      t.index [:code, :environment], unique: true
      t.index [:environment, :code], unique: true
    end
  end
end
