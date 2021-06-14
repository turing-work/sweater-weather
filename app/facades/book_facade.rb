class BookFacade
  class << self
    def location_book_data(location, quantity)
      forecast = ForecastFacade.location_weather_data(location)
      data = OpenLibraryService.get_location_books(location, quantity)
      books = {
        destination: location,
        forecast: {
          summary: forecast.current_weather[:conditions],
          temperature: "#{forecast.current_weather[:temperature]} F"
        },
        total_books_found: data[:numFound],
        books: data[:docs].map do |book|
          {
            isbn: book[:isbn],
            title: book[:title],
            publisher: book[:publisher]
          }
        end
      }
      # TODO: refactor to fix issue between openstruct and serializer
      # OpenStruct.new(id: nil, data: books)
      Book.new(books)
    end
  end
end