# frozen_string_literal: true

['all', Rails.env].each do |seed|
  seed_file = "#{Rails.root}/db/seeds/#{seed}.rb"

  p seed_file

  if File.exist?(seed_file)
    puts "\ndb/seeds/#{seed}.rb:"
    require seed_file
  end
end
