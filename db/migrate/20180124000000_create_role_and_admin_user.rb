class CreateRoleAndAdminUser < ActiveRecord::Migration[5.1]
  def change
    Role.create!([
      {id: 1, name: "Administrateur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 14:28:01", updated_at: "2018-01-24 14:28:01"},
      {id: 2, name: "Chef de projet", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:55:10", updated_at: "2018-01-24 11:55:10"},
      {id: 3, name: "Developpeur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:56:23", updated_at: "2018-01-24 11:56:23"}
    ])
    user = User.new({id: 1, email: "guillaume.crochemore@gmail.com", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$.RB/xnqEJnS1GE2GAhKDj.HbSzMJ7hJlZNGInyXDvzgtwkGON.Stq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-03-28 18:26:46", last_sign_in_at: "2017-03-28 18:18:11", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Crochemore", created_at: "2017-03-19 18:30:13", updated_at: "2017-03-28 18:26:46"})
    user.skip_confirmation!
    user.save!
    user.add_role "Administrateur"
  end
end
