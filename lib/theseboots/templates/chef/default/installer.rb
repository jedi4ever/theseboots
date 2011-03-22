class Chef
	possible_options=[
		{ :name => "binary" , :value => "gem"},
		{ :name => "version", :value => ""},
		{ :name => "proxyhost", :value => ""},
		{ :name => "proxyuser", :value => ""},
		{ :name => "proxyport", :value => ""},
		{ :name => "cwd", :value => "."},
		{ :name => "user", :value => "root"},
		{ :name => "proxypassword", :value => ""},
		{ :name => "type", :value => { "gem", "system"}},
		{ :name => "env" , :value => {}}
	]
	def provides
	end
	def self.generate(options)
	cat <<EOM
gem install chef 
EOM
	end
end
