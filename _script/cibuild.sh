# uncomment url in jekyll config
sed 's/# url:/url:/g' '_config.yml' > _config.yml.new
mv _config.yml.new _config.yml
sed 's/# baseurl:/baseurl:/g' '_config.yml' > _config.yml.new
mv _config.yml.new _config.yml

jekyll build
rm -rf .git
