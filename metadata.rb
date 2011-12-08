maintainer       "Myplanet Digital"
maintainer_email "devops@myplanetdigital.com"
license          "Apache 2.0"
description      "Installs/Configures freight"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{
  apache2
  apt
  gpg
}.each do |cookbook|
  depends cookbook
end
