### installing requried packages

%w{httpd mysqld git haproxy zip unzip php}.each do |pkg|
   package pkg do
      action :install
   end
end

#setting up haproxy configs
template '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, "service[httpd]", :delayed
end

#setting up apache configraton
template '/etc/httpd/conf.d/wordpress1' do
  source 'wordpress1.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, "service[haproxy]", :delayed
end

template '/etc/httpd/conf.d/wordpress2' do
  source 'wordpress2.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, "service[haproxy]", :delayed
end

