Before do |scenario|
  start_test_server_in_background
end

After do |scenario|

  	time = Time.new

	day = time.day
	month = time.month
	year = time.year

	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('error' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase
	
	screenshot_embed(:name => "./report/#{sufix}_#{name}_#{day}-#{month}-#{year}")

	#Lista os arquivos mais recentes de uma determinada pasta, para acessar o mais recente e so colocar dir[-1]
	dir = Dir.glob("./report/*").sort_by { |f| File.mtime(f) }
	#puts dir[-1]

	#redimensiona a imagem
	image = MiniMagick::Image.open(dir[-1])
	image.path #=> "./report/"
	image.resize "300x650"
	image.format "png"
	image.write dir[-1]

    shutdown_test_server

end