$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
# {:name=>"Stephen Spielberg",
# :movies=>
#   [{:title=>"Jaws",
#     :studio=>"Universal",
#     :worldwide_gross=>260000000,
#     :release_year=>1975},
#   {:title=>"Close Encounters of the Third Kind",
#     :studio=>"Columbia",
#     :worldwide_gross=>135189114,
#     :release_year=>1977},
#   {:title=>"Raiders of the Lost Ark",
#     :studio=>"Paramount",
#     :worldwide_gross=>248159971,
#     :release_year=>1981},
#   {:title=>"E.T. the Extra-terrestrial",
#     :studio=>"Universal",
#     :worldwide_gross=>435110554,
#     :release_year=>1982},
#   {:title=>"Schindler's List",
#     :studio=>"Universal",
#     :worldwide_gross=>96898818,
#     :release_year=>1993},
#   {:title=>"Lincoln",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>182207973,
#     :release_year=>2012}]}
def gross_for_director(director_data)
  gross = 0
  index = 0
    while index < director_data[:movies].length do 
      gross += director_data[:movies][index][:worldwide_gross]
      index += 1
    end
  gross
end



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
# def gross_for_director(director_data)
#   gross_total = 0
#   inner_index = 0
#   index = 0
#   gross_index = 0
#   #binding.pry
#   while index < director_data[inner_index][:movies].length do 
#     gross_total += director_data[inner_index][:movies][gross_index][:worldwide_gross]
#     index += 1
#     gross_index += 1
#   end
#   inner_index += 1
# end

# def gross_for_director(director_data)
#   gross_total = 0
#   index = 0
#     while index < director_data[:movies].length do 
#       gross_total += director_data[:movies][index][:worldwide_gross]
#       index += 1
#     end
#   return gross_total
# end



# Write a method that, given an NDS creates a new Hash
# The return value should be like:
# { directorOne => allTheMoneyTheyMade, ... }
#[{:name=>"Test Director", :movies=>[]}]
def directors_totals(nds)
  total = {}
  outer_index = 0
    #binding.pry
    while outer_index < nds.length do
      name = nds[outer_index][:name]
      total[name] = gross_for_director(nds[outer_index])
      outer_index += 1
    end
  total
end

# def directors_totals(nds)
#   result = {}
#   row_index = 0
#   while row_index < nds.length do
#     binding.pry
#     director = nds[row_index]
#     result[director[:name]] = gross_for_director(director)
#     row_index += 1
#   end
# result
# end












# def directors_totals(nds)
#   result = {}
#   row_index = 0
#   while row_index < directors_database.length do
#     name = directors_database[row_index][:name]
#     gross_index = 0
#       while gross_index < directors_database[row_index][:movies].length do
#         result[name] += gross_for_director(nds)      
#         gross_index += 1
#       end
#     row_index += 1
#   end
# result
# end


#directors_database[row_index]