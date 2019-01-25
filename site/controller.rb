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

before "index.html.erb", "varma.html.erb", "kalla.html.erb", "godis.html.erb", "bakverk.html.erb" do
    data = YAML.load_file("data/dishes.yaml")
    @hot_dishes = data['dishes']['hot']
    # p @hot_dishes
    
    @cold_dishes = data['dishes']['cold']
    @candy = data['dishes']['candy']
    @pastries = data['dishes']['pastries']


end

