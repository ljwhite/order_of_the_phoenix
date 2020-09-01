require 'rails_helper'

describe MemberService do
  context 'instance methods' do
    it 'returns member data' do
      service = MemberService.new
      search = service.find_order_members_by_house("Gryffindor")
      expect(search).to be_an Array
      sirius = search.first
      expect(sirius).to have_key :name
      expect(sirius[:name]).to eq("Sirius Black")
      expect(sirius).to have_key :house
      expect(sirius[:house]).to eq("Gryffindor")
    end
  end
end
