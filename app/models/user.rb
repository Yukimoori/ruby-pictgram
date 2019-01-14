class User < ApplicationRecord
    validates :name, presence: true,length: { maximum: 15 }

    VAILID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,format:{with:VAILID_EMAIL_REGEX}

    validates :password,
    length: { in: 8..32 },
    format:{with:/([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}

    has_secure_password

  end
