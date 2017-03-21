# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

users = %w(tom jay helen mook fox pd jon jonny)
skills = %w(Ruby Rails Java C++ C# C groovy)

users.map! do |name|
  User.create(
      name: name,
      email: "#{name}@example.com",
      password: 'password'
  )
end

skills.map! do |skill|
  Skill.create(name: skill)
end

users.each do |user|
  skills.each do |skill|
    UserSkill.create(user_id: user.id, skill_id: skill.id)
  end
end
