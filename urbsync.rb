ENV["WATCHR"] = "1"

# watch( 'urbit-docs/docs.md' ) {|f| system("cp -f #{f[0]} ../../urbits/socbud_fallen/home/web/")}
# watch( 'urbit-docs/(.*).md' ) {|f| puts "#{f[0]} -- #{f[1]}"}
watch( 'urbit-docs/(.*).md' ) {|f| system("cp -f #{f[0]} ../urbits/socbud_fallen/home/web/#{f[1]}.md")}
