=begin
given this data structure, return an array containing the colors of the fruit and the sizes of the 
vegetables. the sizes should be upper case and the colors should be capitalized

input: 
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

output:
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

rules
-return value is an array
-need to select colors of fruit and size of vegetables
-capitalize the colors of the fruit and upcase the size of the vegetables

steps
-itterate through main hash
-determine whether it's a fruit or vegetable
-select for colors from fruits and size for vegetable
-capitalize the colors and uppercase the vegetables

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def produce_slicer(hash)
  hash.map do |name, info|
    if info[:type] == "fruit"
      info[:colors].map do |color|
        color.capitalize
      end
    elsif info[:type] == "vegetable"
      info[:size].upcase
    end
  end
end

p produce_slicer(hsh)