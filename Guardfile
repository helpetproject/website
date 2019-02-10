# This group allows to skip running RuboCop when RSpec failed.
group :red_green_refactor, halt_on_fail: true do
  guard :rspec do
    watch('spec/spec_helper.rb')                        { "spec" }
	watch('config/routes.rb')                           { "spec/routing" }
	watch('app/controllers/application_controller.rb')  { "spec/controllers" }
	watch(%r{^spec/.+_spec\.rb$})
	watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
	watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
	watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
	watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  end

  guard :rubocop do
    watch(%r{.+\.rb$})
  	watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
  end
end
