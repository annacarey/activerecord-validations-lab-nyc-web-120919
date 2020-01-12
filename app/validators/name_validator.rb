class NameValidator < ActiveModel::Validator

    def validate(record)
        if record.name == nil 
            record.errors[:name]<<"There is no name"
        end

       
    end 

end 