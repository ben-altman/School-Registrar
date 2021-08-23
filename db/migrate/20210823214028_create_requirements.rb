class CreateRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :requirements do |t|
      t.string :name

      t.timestamps
    end
  end
end
