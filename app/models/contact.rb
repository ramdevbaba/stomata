class Contact < CouchRest::ExtendedDocument
  use_database COUCH_DB

  property :first_name
  property :last_name, :alias => :family_name
  property :company_name
  property :job_title
  property :address, :cast_as => 'Address'
  property :phone_numbner
  property :email
  timestamps!

  view_by :first_name

end