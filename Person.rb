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

# error , function already defined
# 'Hallo, guten tag!' 
# pronunciation: polimorfisim 

# (5.2).to_i => 5 # Float.to_i
# "5".to_i => 5 # String.to_i 
