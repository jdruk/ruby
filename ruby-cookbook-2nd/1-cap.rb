=begin
  S-Expression
=end 

require 'ripper'

s_expression = Ripper.sexp("1+1")
puts s_expression

# antigo modo old_way options = {}
def new_way **options
  return options[:foo]
end

# Call
new_way foo: 'foo-return'
new_way # nil

# Overried
def new_way foo:
  return foo
end

new_way foo: 'foo-return'
# Error missing keyword: foo 
# new_way 

class Foo
  private def baz
    'opa'
  end

  def bar
    baz
  end
end

# Error (NoMethodError_
# Foo.new.baz 

Foo.new.bar # Work

# Array of the Symbols (Necessery '()' )
array = %i(foo bar caz)

# See MonkeyPatches
module MonkeyPatches
  refine String do
    def length
      30
    end
  end
end

class TestMyMonkey
  using MonkeyPatches

  def string_length string
    string.length
  end
end

string = 'josafa'

puts string.length
puts TestMyMonkey.new.string_length string

# Debug
trace = TracePoint.new(:raise) do |t| 
  puts t.inspect
end

trace.enable
# require 'not_found'

module MyHelper
  def save
    puts 'before'
    super
    puts 'after'
  end
end

class BadClass
  include MyHelper

  def save
    puts 'middle'
  end
end

# utilized include 
BadClass.new.save # method save overried

class GoodClass
  prepend MyHelper

  def save
    puts 'middle'
  end
end

# Util prepending
GoodClass.new.save # method save add 'middle' 

# DIR
puts __dir__ # Diretorio file
puts __FILE__ # name file.rb
# See Pag 53 method chunk
# See class Fiber


