Several projects are implementing bootstrapping a 'vanilla' system:

We all know that installing software and managing it, should be done by config management systems.
But what if you can't run it yet, because you are missing dependencies?

F.i. both [puppet](http://puppetlabs.com), [vagrant](http://vagrantup.com), [chef](http://opscode.com), veeewee[http://github.com/jedi4ever/veewee], [fog](http://github.com/geemus/fog) all have need to bootstrap ruby on machine. 

The goal of this project to a bundle these efforts in a shared gem that can create templates.
An additional step could be to handle the ssh bootstrap itself but that's for the future.

Invoking would be typical:
<pre>
	bootstrapcode=Theseboots.strap(platform,
		[ "ruby", { version => "1.9.2", type => "source", ... ],
		[ "chef", { version => "0.9.14", type => "gem", ...],
		[ "puppet", { version => "2.6.14", type => "system", ...],
</pre>

platform would something like "ubuntu-10.10-i386" or "debian-...-x64"

This would result in some bash code that can be execute on a box (potentially over ssh)

Example ubuntu:
<pre>
apt-get update
apt-get upgrade
apt-get install build-essentials
apt-get install -y build-essential wget zlib1g-dev libssl-dev libffi-dev
cd /usr/src/local
wget ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p0.tar.bz2
tar xjf ruby-1.9.2-p0.tar.bz2
cd ruby-1.9.2-p0
./configure
make
make install
gem install chef
apt-get install puppet
</pre>

- Additional options would be to set options like proxies, paths, ....
- Or for python based, do the same

This is currently an idea, but I'm going to make a headstart for my [mccloud](http://github.com/jedi4ever/mccloud) and [veewee](http://github.com/jedi4ever/veewee)

Let me know if you want to collaborate on this. 

Patrick

P.S.  I'm not sure where this goes, and it could be that each vendor has to implement it himself, we'll see. Anyway, I'm happy to contribute the scripts if this project becomes obsolete
