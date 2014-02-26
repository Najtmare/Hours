# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require "spec_helper"

describe Category do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }

    it "should validate case insensitive uniqueness" do
      create(:category, name: "software development")
      expect(build(:category, name: "Software Development")).to_not be_valid
    end
  end

  describe "associations" do
  end
end
