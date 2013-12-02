# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#unless Item.all.exists?
  p = File.read('db/dump.sql')
  rows = p.split("\n")
  rows.each do |row|
    row = row.to_s.gsub(";", "")
    row = row.strip
    unless row.blank?
      ActiveRecord::Base.connection().execute row
    end
  end

#end