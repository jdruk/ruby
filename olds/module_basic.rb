module  A
	def module_a
		puts "m::a"
	end

	def module_b
		puts "m::b"
	end

	module B
		def moduleB_b
			puts "module b b"
		end
	end
end

class Clazz
	include A::B
end

module Test
	module_function
end

module Test
	module ClassMethods
		def hello
			puts 'Class methods'
		end
	end
	
	module InstanceMethods
		def instance_from_module_teste
			puts "methdos for instance"
		end
	end
	
	def self.included(receiver)
		receiver.extend         ClassMethods
		receiver.send :include, InstanceMethods
	end
end