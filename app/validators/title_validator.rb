class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title == nil 
            record.errors[:title]<<"No title"
        else  
        checkers = ["Won't Believe", "Secret", "Top [number]", "Guess"]
        checkers.each do |checker|
            if record.title.include?(checker)
                return 
            end 
        end 
        record.errors[:title]<<"Not click-baity enough"
    end
    end 
end

