require 'rails_helper'

RSpec.describe Task, type: :model do
  # اختبار للتحقق من صحة نموذج Task
  it "is valid with valid attributes" do
    task = Task.new(title: "Test Task", description: "Test Description", due_date: "2025-12-01", completed: false)
    expect(task).to be_valid
  end

  # اختبار للتحقق من أن النموذج غير صالح بدون عنوان
  it "is invalid without a title" do
    task = Task.new(title: nil)
    expect(task).not_to be_valid
  end

  # اختبار للتحقق من أن النموذج غير صالح بدون تاريخ استحقاق
  it "is invalid without a due_date" do
    task = Task.new(due_date: nil)
    expect(task).not_to be_valid
  end

  # اختبار للتحقق من أن المهمة مكتملة إذا تم تحديد الحالة كـ true
  it "is marked as completed" do
    task = Task.new(title: "Completed Task", description: "Description", due_date: "2025-12-01", completed: true)
    expect(task.completed).to be true
  end
end