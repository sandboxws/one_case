class Case
  include Mongoid::Document
  include Mongoid::Timestamps
  
  mount_uploader :image, ImageUploader

  field :title, :type => String
  field :first_name, :type => String
  field :middle_name, :type => String
  field :last_name, :type => String
  field :initials, :type => String
  field :street_name, :type => String
  field :building_no, :type => String
  field :city, :type => String
  field :telephone, :type => String
  field :mobile, :type => String
  field :classification, :type => String
  field :payment_type, :type => String
  field :description, :type => String
  field :requirements, :type => String
  field :amount_required, :type => Float
  field :current_amount, :type => Float
  field :facebook_page, :type => String
  field :twitter_page, :type => String
  field :due_date, :type => DateTime
  field :done, :type => Boolean
  field :ngo_contact_person, :type => String
  field :ngo_contact_person_phone, :type => String
  field :video_url, :type => String

  def self.current
    self.first
  end

  def amount_remaining
    amount_required - current_amount
  end
end
