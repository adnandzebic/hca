class Employee < ActiveRecord::Base
    has_many :services
    has_many :clients, through: :services
    validates :first_name, presence: true,
        length: { minimum: 3 }
end
