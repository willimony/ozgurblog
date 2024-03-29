xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0' do
	xml.channel do
		xml.title "Özgür Duvar!"
		xml.description "Trakya Üniversitesi'nden Özgür Duvar!"
		xml.link posts_url
		
		@posts.each do |post|
			xml.item do
				xml.title post.title
				xml.description markdown(post.content)
				xml.pubDate post.created_at.to_s(:rfc822)
				xml.link post_url(post)
			end
		end
	end
end