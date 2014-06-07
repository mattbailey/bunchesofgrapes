# Taken from https://github.com/guard/guard/wiki/System-notifications
notification :tmux,
  display_message: true,
  timeout: 5, # in seconds
  default_message_format: '%s >> %s',
  # the first %s will show the title, the second the message
  # Alternately you can also configure *success_message_format*,
  # *pending_message_format*, *failed_message_format*
  line_separator: ' > ', # since we are single line we need a separator
  color_location: %w[status-left-bg pane-active-border-fg pane-border-fg]

guard :bundler do
  watch('Gemfile')
end

guard :rack do
  watch('Gemfile.lock')
  watch(%r{^(config|lib/app|lib)/.*})
end

guard :rspec do
  watch(%r{.+\.rb$})
  watch('spec/spec_helper.rb') { "spec" }
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

guard 'ctags-bundler', :src_path => ["config", "lib", "spec"] do
  watch(/^(config|lib|spec)\/.*\.rb$/)
  watch('Gemfile.lock')
end

guard 'yard', :port => 9293 do
  watch(%r{app/.+\.rb})
  watch(%r{lib/.+\.rb})
  watch(%r{ext/.+\.c})
end
