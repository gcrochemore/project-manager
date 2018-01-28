class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  has_many :assignments

  def to_label
    self.to_s
  end

  def name
    self.to_s
  end

  def to_s
    self.first_name + ' ' + self.last_name
  end
end
