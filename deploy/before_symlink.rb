yml_path = File.join(release_path, 'config', 'ey.yml')
File.open(yml_path, 'w') do |f|
  $stderr.puts "dumping node info: #{node.inspect}"
  YAML.dump(node)
end

