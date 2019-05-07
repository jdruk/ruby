# See duck typing
string = 'josafa'
puts string.length
puts string.count 'a'

string = "il \xc3\xa9tait une fois"
puts string

long_string = <<EOF
JOSAFA MARTINS DOS SANTOS
  Várias linhas
EOF

puts long_string

string = 'cinco bytes'

puts string[0,6]
puts string.slice 0,6
puts string.byteslice 0

# Iterate over a data structure
# Mode easy
hash = {key1: 'value1', key2: 'value2'}
string = ""
hash.each { |k, v| string << "#{k} is #{v} \n"}
puts string

# mode hard read
string = ""
hash.each { |k, v|  k.to_s << " is " << v << "\n"}
puts string

data = ['1', '2', '3']
s = ""
data.each { |x| s << x << " and "  }
puts s # puts 1 and 2 and 3 and
puts data.join " and "

# See next in String
puts 'a'.next # puts b

string = %{Opa aqui tem código ruby 
#{class ChunkRuby
  def teste
    "hardcoded"
  end
end
 ChunkRuby.new.teste  
}}

puts string

string = <<POEMA
OPA
  Aqui tem um texto qualquer

POEMA

puts string

# Templates ERB
# %q{} mesmo que aspas simples e Q são as duplas

require 'erb'

template = %q{
  <% if problemas.empty? %>
    Não tem erros
  <% else %>
    erros
    <% problemas.each do |problema, linha| %>
      <%= problema %> linha <%= linha %>
    <% end %>
  <% end %>
}

puts template
puts template.gsub /^\s+/, ''

template = ERB.new template, nil, '<>'
problemas = [['error had', 2], ['error easy', 4]]

template.run(binding)
