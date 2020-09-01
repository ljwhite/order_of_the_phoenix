class MemberService

  def find_order_members_by_house(house)
    response = conn.get("/v1/characters?key=#{ENV['HOGWARTS_API_KEY']}&house=#{house}&orderOfThePhoenix=true")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    @conn ||= Faraday.new(url: "https://www.potterapi.com")
  end
end
