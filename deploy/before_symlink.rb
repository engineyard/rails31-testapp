yml_path = File.join(release_path, 'config', 'ey.yml')
File.open(yml_path, 'w') do |f|
  YAML.dump(node)
end

