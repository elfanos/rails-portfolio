
namespace :article do
  # desc "Enqueues a job to get url from Elib and then thumb the cover."
  # it to a smaller one. Put it up on s3 and insert the new url for the
  # image to a column called cover_img
  task resize_article: :environment do
    puts "hej"
    resize_covers
  end
  def resize_covers
    Article.all.each do |article|
      article.paper.recreate_versions!
      Rails.logger.info "creating new one!"
    end
  end
end
