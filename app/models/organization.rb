class Organization
  include Mongoid::Document
  include Mongoid::Timestamps

  mount_uploader :image, ImageUploader

  field :name, localize: true
  field :slug
  field :description
  field :extra_description
  field :fund_raised, type: Integer, default: 0
  field :donators_count, type: Integer, default: 0
  field :days_count, type: Integer, default: 0
  field :registration_number
  field :address
  field :phone_numbers
  field :bank_account_number

  validates_uniqueness_of :name
  validates_presence_of :name, :description, :address, :phone_numbers, :bank_account_number

  has_many :cases

  before_create :slugify

  def slugify
    self.slug = self.name.gsub /\s+/, '-'
  end

  def to_param
    self.slug
  end
end