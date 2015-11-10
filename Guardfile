# Guardfile
# More info at https://github.com/guard/guard#readme

notification :terminal_notifier, subtitle: 'CurateND Futures'

guard :bundler do
  watch('Gemfile')
end

guard :jshintrb do
  watch(%r{^app/assets/javascripts/.+.js})
  watch(%r{^spec/javascripts/.+.js})
end

guard 'rails' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end
guard :scsslint, all_on_start: false do
  watch(%r{.+\.scss$})
end

guard :rubocop, all_on_start: false, cli: ['--format', 'clang', '--rails', '--config', './.hound.yml' ] do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.hound\.yml$}) { |m| File.dirname(m[0]) }
end

guard 'spring', bundler: true do
  watch('Gemfile.lock')
  watch(%r{^config/})
  watch(%r{^spec/(support|factories)/})
  watch(%r{^spec/factory.rb})
end
