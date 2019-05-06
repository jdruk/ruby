require "sidekiq"

Sidekiq.configure_client do |config|
	config.redis = {db: 1}
end

Sidekiq.configure_server do |config|
	config.redis = {db: 1}
end


class Worker 
	include Sidekiq::Worker
	 
	# =begin
	# 	Não é uma boa prática passar um objeto como parâmetro
	# 	visto que ele será serializado no processo de transferência
	# 	def perform(client, count=0)
	#     	sleep count
	#     	puts 'end process'
	#   	end

	#   	def self.show_informations(client)
	#   		puts "cliente nome #{client.name}"
	#   	end
	#  	=end

  	def perform(name, count=0)
  		puts name
  		sleep count
  		puts "process termined"
  	end
end

class Client
	attr_accessor :name
end

__END__


sudo pacman -Sy docker
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker

A imagem já linkar a porta 6379 com a do container
docker run --name redis-intance -d redis