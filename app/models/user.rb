class User < ActiveRecord::Base
  validates :email,
            :presence => true,
            :format => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,
            :uniqueness => true
end

