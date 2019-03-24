require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'title, contentが存在するので、バリデーションが通る' do
    product = Product.new(title: 'こんにちうは！', content: 'うあはうあ！')
    expect(product).to be_valid
  end

  it 'titleが存在しないので、バリデーションが弾かれる' do
    product = Product.new(content: 'うんち！！！！！！')
    expect(product).not_to be_valid
  end

  it 'contentが存在しないので、バリデーションが弾かれる' do
    product = Product.new(title: 'スマブラ強くなりてえ！！！！')
    expect(product).not_to be_valid
  end

  it 'titleが５文字未満なので、バリデーションが弾かれる' do
    product = Product.new(title: 'うんちち')
    expect(product).not_to be_valid
  end

end
