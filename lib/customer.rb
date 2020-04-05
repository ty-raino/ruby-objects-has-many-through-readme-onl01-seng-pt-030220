
class Customer
    
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :age
    
    def initialize(name, age)
        @name, @age = name, age
        @@all << self
    end

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    def waiters
        meals.map do |meal|
            meal.waiter
        end
    end
        

end

