unless Rails.env.production?
  Recording.destroy_all

  110.times{ Recording.create! }
end
