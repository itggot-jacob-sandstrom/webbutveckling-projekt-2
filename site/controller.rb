# require 'byebug'




# before do
require 'yaml'

# puts "before"
# @data = YAML.load(File.read("data/dishes.yaml"))
# puts "after"
# @atad = @data

# @data = ["köttbullar", "prinskorv"]



# end

# p @data




layout('layout.html.erb')

before "index.html.erb" do
    data = YAML.load_file("data/dishes.yaml")
    @hot_dishes = data['dishes']['varma']
    @hot_dish_names = @hot_dishes.map { |dish| dish["name"] }

end
