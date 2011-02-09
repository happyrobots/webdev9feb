password = 'passwordisemail'

User.create([
  {:full_name => "Nia Mutiara",
   :is_committee => true,
   :email => 'techdir4@ntuoss.org',
   :password => password,
   :password_confirmation => password}
])
