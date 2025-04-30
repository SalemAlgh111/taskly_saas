require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with valid attributes" do
    task = Task.new(title: "Test Task", description: "Test description", due_date: Date.today)
    expect(task).to be_valid
  end

  it "is not valid without a title" do
    task = Task.new(description: "Test description", due_date: Date.today)
    expect(task).not_to be_valid
  end
end
