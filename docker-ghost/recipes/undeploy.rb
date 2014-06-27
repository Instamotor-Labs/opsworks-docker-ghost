docker_container 'dockerfile/ghost' do
  signal 'QUIT'
  action :kill
end
