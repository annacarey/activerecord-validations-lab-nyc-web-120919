class Author < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with NameValidator

    validates :name, uniqueness: true

    validates :phone_number, length: { is: 10 }
end