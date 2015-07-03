class Book < ActiveRecord::Base
    has_many :pages
        
    def self.create_from_manifest(slug, hash)
      b = Book.create(
        title: hash["title"],
        notes: hash["notes"],
        slug: slug,
        catalogue_url: hash["catalogue"],
        catalogue_id: hash["catalogue_id"],
        start_date: hash["start_date"],
        end_date: hash["end_date"],
        page_count: hash["pages"]
      )
      b.page_count.times do |p|
        Page.create(
          book: b, 
          page_number: p,
          image_file_name: "#{b.slug}_#{p+1}.jpg"
        )
      end
      b
    end
end
