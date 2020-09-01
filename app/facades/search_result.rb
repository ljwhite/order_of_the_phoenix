class SearchResult

  def members(house)
    json = MemberService.new.find_order_members_by_house(house)

    @members = json.map do |member_data|
      Member.new(member_data)
  end
end
