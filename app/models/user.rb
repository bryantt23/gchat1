class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Since we don't have the user_id column in our conversation table,
  # we must explicitly tell rails which foreign key to use.
  has_many :conversations, :foreign_key => :sender_id
  # i think since the migration file has
  # add_index :conversations, :sender_id, maybe this is the connection

end
