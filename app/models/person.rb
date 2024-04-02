class Person < ApplicationRecord
    has_many :message

    validates :name, presence: {message: "は、必須項目です"}
    validates :age, numericality: {only_integer:true,less_than:125,message: "の入力に誤りがあります"}
    validates :mail, email: {message: "は、メールアドレスではありません。"}

end
