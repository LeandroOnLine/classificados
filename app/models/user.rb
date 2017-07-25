class User < ApplicationRecord
  validates :user_name, presence: {message: 'O nome não pode ficar em branco'}
  validates :cell_phone, presence: {message: 'O telefone não pode ficar em branco'}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
