docker_container 'ghost' do
  signal 'QUIT'
  action :kill
end
