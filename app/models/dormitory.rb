class Dormitory < ApplicationRecord
    attr_accessor :id, :name, :address

    def initialize(id, name, address)
        @id = id
        @name = name
        @address = address
    end
end