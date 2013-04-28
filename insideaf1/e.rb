ENV.each do |name, value|
  value = value[0..19] + "..." if value.length > 20
  print "#{name} = #{value}\n"
end
