module ApplicationHelper
  
  def image(page)
    return "#{BathPlaybills::Application::IMAGE_BASE}/#{page.book.slug}/#{page.image_file_name}"
  end
end
