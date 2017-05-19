class CreateSubjectsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects_users, id: false do |t|
      t.belongs_to :subject, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
