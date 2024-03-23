class Person < ApplicationRecord
    validates :name, presence: true
    validates :age, numericality: {only_integer:true,less_than:125}
    validates :mail, uniqueness:true ,presence: true
    
end
