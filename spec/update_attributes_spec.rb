# frozen_string_literal: true

RSpec.describe UpdateAttributes do
  it "has a version number" do
    expect(UpdateAttributes::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end


  def test_update_attributes
    topic = Topic.find(1)
    assert !topic.approved?
    assert_equal "The First Topic", topic.title

    topic.update_attributes("approved" => true, "title" => "The First Topic Updated")
    topic.reload
    assert topic.approved?
    assert_equal "The First Topic Updated", topic.title

    topic.update_attributes(approved: false, title: "The First Topic")
    topic.reload
    assert !topic.approved?
    assert_equal "The First Topic", topic.title
  end

  def test_update_attributes!
    Reply.validates_presence_of(:title)
    reply = Reply.find(2)
    assert_equal "The Second Topic of the day", reply.title
    assert_equal "Have a nice day", reply.content

    reply.update_attributes!("title" => "The Second Topic of the day updated", "content" => "Have a nice evening")
    reply.reload
    assert_equal "The Second Topic of the day updated", reply.title
    assert_equal "Have a nice evening", reply.content

    reply.update_attributes!(title: "The Second Topic of the day", content: "Have a nice day")
    reply.reload
    assert_equal "The Second Topic of the day", reply.title
    assert_equal "Have a nice day", reply.content

    assert_raise(ActiveRecord::RecordInvalid) { reply.update_attributes!(title: nil, content: "Have a nice evening") }
  ensure
    Reply.reset_callbacks(:validate)
  end
end
