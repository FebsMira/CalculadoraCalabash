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

	screenshot_embed(:prefix => nil,:name => "./report/#{sufix}_#{name}_#{day}-#{month}-#{year}")
	
	image = MiniMagick::Image.open("./report/#{sufix}_#{name}_#{day}-#{month}-#{year}png")
	image.path #=> "./report/"
	image.resize "300x650"
	image.format "png"
	image.write "./report/#{sufix}_#{name}_#{day}-#{month}-#{year}.png"

    shutdown_test_server

end