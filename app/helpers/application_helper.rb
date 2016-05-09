module ApplicationHelper

  def gravatar_for(barmen, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(barmen.email.downcase)
    size = options[:size]
    gravatar_url = 'http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}'
    image_tag(gravatar_url, alt: barmen.barmenname, class: 'gravatar')
  end
  
end
