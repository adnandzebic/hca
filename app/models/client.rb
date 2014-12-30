class Client < ActiveRecord::Base
    has_many :services
    has_many :employees, through: :services
    validates :first_name, presence: true,
        length: { minimum: 3}
end
