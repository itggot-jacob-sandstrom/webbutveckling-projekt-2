




# before do
# require 'yaml'

# puts "before"
# @data = YAML.load(File.read("data/dishes.yaml"))
# puts "after"
# @atad = @data

# @data = ["köttbullar", "prinskorv"]



# end

# p @data




layout('layout.html.erb')

before do
    @data = {"dishes"=>[{"name"=>"Köttbullar", "category"=>"varm", "description"=>"bullar av kött", "recipes"=>[{"title"=>"Italienska köttbullar", "ingredients"=>[]}, {"title"=>"Mormors köttbullar", "ingredients"=>[]}]}, {"name"=>"Prinskorv", "category"=>"varm", "description"=>"korv gjorda på prins", "recipes"=>[{"title"=>"Goa körvar", "ingredients"=>["omg", "wtf", "lol"]}]}]}
    @dish_names = @data["dishes"].map do |dish| 
        dish["name"]
    end
    # p dish_names
end