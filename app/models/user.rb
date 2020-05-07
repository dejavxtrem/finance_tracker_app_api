class User < ApplicationRecord
    has_many :bankinformations
    has_many :creditcards
    has_many :billexpenses
end
