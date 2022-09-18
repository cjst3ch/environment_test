# -location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Lord of the Rings', author: 'J.R.R. Tolkien', price: 10.23, date: '0000-00-00')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a title' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a title' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a title' do
    subject.date = nil
    expect(subject).not_to be_valid
  end