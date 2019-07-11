class Router < ApplicationRecord
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])

        else
              where(["name LIKE null"])
        end
    end    
end
