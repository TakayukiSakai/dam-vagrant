
%w{php php-mysql php-mbstring}.each do |pkg|
    package pkg do
        action :install
    end
end

