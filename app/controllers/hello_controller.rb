class HelloController < ApplicationController
    

    def index 
        @header='layout sample'
        @footer='copyright SYODA-Tuyano 2020.'
        @title='New Layout!'
        @msg= 'This is sample page!'

    end 

    def other
        redirect_to action: :index, params: {'msg': 'from other page'}
    end
end
