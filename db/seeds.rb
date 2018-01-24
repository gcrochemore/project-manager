User::HABTM_Roles.create!([
  {user_id: 1, role_id: 3},
  {user_id: 1, role_id: 2},
  {user_id: 1, role_id: 1}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 3},
  {user_id: 1, role_id: 2},
  {user_id: 1, role_id: 1}
])
User.create!([
  {id: 1, email: "guillaume.crochemore@gmail.com", encrypted_password: "$2a$11$olo0gIVyp8C5wTuPG1G7humj1rs2H5oaEm.oYhVvJ2wCSSzKyKsPe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2018-01-24 11:59:00", last_sign_in_at: "2018-01-24 11:19:00", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "Dxr7uskL45A9_Kkbt_vK", confirmed_at: "2018-01-23 22:50:00", confirmation_sent_at: "2018-01-23 22:35:00", unconfirmed_email: "", failed_attempts: 0, unlock_token: "", locked_at: nil, first_name: "Crochemore", last_name: "Guillaume", created_at: "2018-01-23 22:35:39", updated_at: "2018-01-24 13:19:35"}
])
Role.create!([
  {id: 1, name: "Administrateur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:54:58", updated_at: "2018-01-24 11:54:58"},
  {id: 2, name: "Chef de projet", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:55:10", updated_at: "2018-01-24 11:55:10"},
  {id: 3, name: "Developpeur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:56:23", updated_at: "2018-01-24 11:56:23"}
])
