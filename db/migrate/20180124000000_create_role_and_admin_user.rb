class CreateRoleAndAdminUser < ActiveRecord::Migration[5.1]
  def change
    Role.create!([
      {id: 1, name: "Administrateur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 14:28:01", updated_at: "2018-01-24 14:28:01"},
      {id: 2, name: "Chef de projet", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:55:10", updated_at: "2018-01-24 11:55:10"},
      {id: 3, name: "Developpeur", resource_type: nil, resource_id: nil, created_at: "2018-01-24 11:56:23", updated_at: "2018-01-24 11:56:23"}
    ])
    user = User.new({id: 1, email: "guillaume.crochemore@gmail.com", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Guillaume", last_name: "Crochemore"})
    user.skip_confirmation!
    user.save!
    user.add_role "Administrateur"
    user.add_role "Chef de projet"

    user = User.new({id: 2, email: "mickael.poulachon@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eax25RmpcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Mickael", last_name: "Poulachon"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 3, email: "vincent.pecquerie@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Vincent", last_name: "Pecquerie"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 4, email: "mederic.delamarre@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Mederic", last_name: "Delamarre"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 5, email: "etienne.dutet@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Etienne", last_name: "Dutet"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 6, email: "leonard.messier@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Eds25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Leonard", last_name: "Messier"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 7, email: "thomas.cumond@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Evf25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Thomas", last_name: "Cumond"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 8, email: "gilles.danjou@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Ecd35RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "Gilles", last_name: "Danjou"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"

    user = User.new({id: 9, email: "james.gaillon@trsb.nett", password:"password", password_confirmation: "password", confirmation_token: "yj6UY5Ecd35DbscWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", first_name: "James", last_name: "Gaillon"})
    user.skip_confirmation!
    user.save!
    user.add_role "Developpeur"
  end
end
