# Inheritance & Polymorphism
# Inheritance helps us to keep our code DRY (dont repeat yourself)

class Person
    def say_hi()
        return 'Hello, good day!'
    end

    def walk()
        return 'it just walks'
    end
end

class EnglishPerson < Person
end

class GibraltarPerson < Person
end

person = Person.new()
p person.say_hi()

english_person = EnglishPerson.new()
p english_person.say_hi

# "Hello, good day!"
# Error , no method found...

# Polymorhism
class GermanPerson < Person
    def say_hi()
        return 'Hallo, guten tag!'
    end
end

class BayernGermanPerson < GermanPerson
    # say_hi()
end

bayern_german_person = BayernGermanPerson.new()
p bayern_german_person.walk()

german_person = GermanPerson.new()
p german_person.say_hi



person # any KIND of person
person.say_hi 


# error , function already defined
# 'Hallo, guten tag!' 
# pronunciation: polimorfisim 

# (5.2).to_i => 5 # Float.to_i
# "5".to_i => 5 # String.to_i 


# Abstraction

class MobilePhone
    def unlock(fingerprint)
        screen_light_up()
        check_fingerprint()
        load_unlocked_screen()
    end

    private

    def check_fingerprint(fingerprint)
        return match_fingerprints(stored_fingerprint, fingerprint)
    end

    def screen_light_up()
        # lights up somehow
    end

    def load_unlocked_screen()
        # loads the welcome, unlocked screen
    end

end


class PasswordHasher
    # 'thisIsMYpassword' => 'SECRET_KEY' => '62451b37d0fae58e8f2f66452205ab80'
    # login => thisIsMypasswor + 'SECRET_KEY' => the same hash as above :up:  '62451b37d0fae58e8f2f66452205ab80'
    def initialize(hasher)
        @hasher = hasher
    end

    def hash_the_password(password)
        return @hasher.hash(password)
    end
end

class PasswordHasher264 < PasswordHasher
end

class PasswordHasher512 < PasswordHasher
end


# Base264Hasher
# Base512Hasher


# Encapsulation

class Cat
    def initialize
        return 'meow'
    end
end

class MobilePhone
    attr_reader :storage

    def initialize()
        @max_memory = 1024
        @storage = '50gb'
        @os = 'v12.b'
    end

    def install_new_app(app)
        enough_storage = check_if_enough_storage(app)

        if enough_storage == true 
            install_app(app)
            return 'app installed'
        else
            return 'not enough storage'
        end
    end

    private
    def set_storage(new_storage)
        @storage = new_storage
    end

    def check_if_enough_storage(app)
        return true
    end
    
    def install_app(app)
        return 'installed'
    end
end

mobile_phone = MobilePhone.new()
p mobile_phone.storage

# mobile_phone.set_storage('100gb')
p mobile_phone.storage
# p mobile_phone.set_storage = Cat.new()
p mobile_phone.install_new_app('new app')

