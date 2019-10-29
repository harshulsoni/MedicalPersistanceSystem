class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :mrn
      t.integer :age
      t.integer :question2
      t.integer :question3
      t.boolean :question4
      t.integer :question51
      t.integer :question52
      t.integer :question53
      t.integer :question54
      t.integer :question55
      t.integer :question56
      t.integer :question6

      t.timestamps null: false
    end
  end
end
