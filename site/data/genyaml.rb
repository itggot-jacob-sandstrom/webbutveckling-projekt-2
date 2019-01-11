require 'yaml'




data = YAML.load(File.read("dishes.yaml"))

# hot_dishes = data["dishes"].select do |dish|
#     dish["category"] == "varm"
# end
 
dish_names = data["dishes"].map do |dish|
    dish["name"]
end

# dish_names = []
# data["dishes"].each do |dish|
#     dish_names << dish["name"]
# end


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

even = numbers.select {|number| number % 2 == 0}
    

p even

p dish_names
# p data
