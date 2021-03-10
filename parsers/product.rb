html = Nokogiri.HTML(content)

price = html.css('[itemprop="price"]').text
raise 'something happened!' if price.strip == ''

outputs << {
    _collection: "products",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}
