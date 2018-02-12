1. Ensure you have ruby installed
2. `gem build bionitio.gemspec`
3. `gem install --user-install bionitio`
4. `export PATH=$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH`

Run without installing: `./bin/bionitio`
