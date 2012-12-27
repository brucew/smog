class Company
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :custom_contact_attrs, type: Hash, default: {}

  has_many :users

  validates_presence_of :name

end