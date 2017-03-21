class CreateUserSkillLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_skill_logs do |t|
      t.references :user
      t.references :user_skill
      t.boolean :active
      t.timestamps
    end
  end
end
