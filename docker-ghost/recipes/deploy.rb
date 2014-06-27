docker_image 'dockerfile/ghost:latest' do
  action :pull
  notifies :redeploy,'docker_container[dockerfile/ghost]', :immediately
end
docker_container 'dockerfile/ghost' do
  action :run
  port "80:2368"
  detach true
end
