docker_image 'ghost' do
  tag 'latest'
  action :pull
  notifies :redeploy,'docker_container[ghost]', :immediately
end
docker_container 'ghost' do
  image 'ghost'
  action :run
  port "80:2368"
  detach true
end
