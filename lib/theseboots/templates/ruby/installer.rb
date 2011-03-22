class Ruby
	supports=[
		{ :name => "version", :value => ""},
		{ :name => "proxyhost", :value => ""},
		{ :name => "proxyuser", :value => ""},
		{ :name => "proxyport", :value => ""},
		{ :name => "cwd", :value => "."},
		{ :name => "user", :value => "root"},
		{ :name => "proxypassword", :value => ""},
		{ :name => "type", :value => { "ree","rvm","system"}},
		{ :name => "env" , :value => {}}
	]
	def provides
	end
	def self.generate(options)
	cat <<EOM
bash <<
EOM
	end
end
