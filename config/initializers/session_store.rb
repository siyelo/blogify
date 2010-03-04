# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogify_session',
  :secret      => '70beb635cf05f540ae58d2df5f456d5066f238d9b4faf80433b60104a12d6a20440f15b1131772704785e6f2b6896f48efeebdbb71e52c2f6bad2bddec3a37e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
