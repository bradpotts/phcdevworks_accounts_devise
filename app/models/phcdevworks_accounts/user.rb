module PhcdevworksAccounts
  class User < ApplicationRecord
  
    # Autogenerate Organization ID
    before_create :phcdevworks_generate_org_id

    # User Gravatar Support
    include Gravtastic
    gravtastic

    # Add Users Roles
    enum role: [:user, :editor, :admin]
    after_initialize :phcdevworks_set_default_role

    # Include default devise modules. Others available are:
    # :trackable, :confirmable, :lockable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable,  :validatable, :timeoutable

    private

    # Autogenerate User Organization ID
    def phcdevworks_generate_org_id
      self.org_id = SecureRandom.hex(5)
    end

    # First Signup Admin and Rest Default to User
    def phcdevworks_set_default_role
      if User.all.count < 1
        self.role ||= :admin
      elsif
        self.role ||= :user
      end
    end
  
  end
end
