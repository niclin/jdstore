RuCaptcha.configure do
  if Rails.env.development?
    self.cache_store = :mem_cache_store
  end
end
