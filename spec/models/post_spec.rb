require 'rails_helper'

describe Post do
  it 'can be created' do
    post = Post.create!(title: "Test Title", description: "Test post description")
    expect(post).to be_valid
  end

  it 'has a summary' do
    post = Post.create!(title: "Test Title", description: "Test post description")
    expect(post.post_summary).to eq("Test Title - Test post description")
  end

  it 'has an abbreviated summary' do
    post = Post.create!(title: "Test Title", description: "Test post description is super cool. It's so cool, I could just go on for hours about its coolness, but suffice to say, it's cooler than you. It's cooler than me. It's cooler than Iceland in February.")
    expect(post.post_summary).to eq("Test Title - Test post description is super cool. It's so cool, I could just go on for hours about its coolness, but suffice to say, it's cooler th...")
  end
end