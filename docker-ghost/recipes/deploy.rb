docker_image 'ghost:latest' do
  action :pull
  notifies :redeploy,'docker_container[ghost]', :immediately
end
docker_container 'ghost' do
  image 'ghost'
  action :run
  port "80:2368"
  detach true
end
