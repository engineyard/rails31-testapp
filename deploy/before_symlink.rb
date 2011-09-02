yml_path = File.join(release_path, 'config', 'ey.yml')
File.open(yml_path, 'w') do |f|
  c = {}
  e = node['environment']
  c[:name] = e['name']
  c[:stack] = e['stack']
  c[:RACK_ENV] = e['framework_env']
  instances = node['engineyard']['environment']['instances']
  c[:public_hostname] = instances.detect {|h| h['public_hostname']} || `hostname`
  f.write(YAML.dump(c))
end
