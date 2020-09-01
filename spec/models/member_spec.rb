require 'rails_helper'

describe Member do
  it 'exists' do
    attrs = {
      name: "Harry Potter",
      role: "The Chosen One",
      house: "Gryffindor",
      patronus: "Stag"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Harry Potter")
    expect(member.role).to eq("The Chosen One")
    expect(member.house).to eq("Gryffindor")
    expect(member.patronus).to eq("Stag")
  end
end
