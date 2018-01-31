class InitWorld < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps null: false
    end

    create_table :classrooms do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :assignments do |t|
      t.string :title
      t.string :description
      t.references :teacher, foreign_key: true
      t.references :classroom, foreign_key: true
      t.due_date :date
      t.timestamps null: false
    end

    create_table :classteachers do |t|
      t.references :teacher, foreign_key: true
      t.references :classroom, foreign_key: true
      t.timestamps null: false
    end
  end
end
