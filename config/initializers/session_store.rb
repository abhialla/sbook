# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sbook_session',
  :secret      => 'a1cb2294cb16f2311836fffb03f320d286df6b47b0173b8f60c4d798c0dc13dfd31b2a9a0a7ae6671495b8718dea0324ee3c6615f3e30c1010efe09ea74209bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
