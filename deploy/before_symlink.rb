yml_path = File.join(release_path, 'config', 'ey.yml')
File.open(yml_path, 'w') do |f|
  c = {}
  e = node['environment']
  c[:name] = e['name']
  c[:stack] = e['stack']
  c[:RACK_ENV] = e['framework_env']
  c[:public_hostname] = e['engineyard']['instances'].detect {|h| h['public_hostname']} || `hostname`
  f.write(YAML.dump(c))
end
