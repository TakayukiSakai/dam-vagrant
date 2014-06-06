
%w{php php-mysql}.each do |pkg|
    package pkg do
        action :install
    end
end

