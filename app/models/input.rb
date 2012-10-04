require "csv"
class Input
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :file, :total_amount

  validates_presence_of :file

  def initialize(attributes = nil)
    if attributes
      attributes.each do |name, value|
        send("#{name}=", value)
      end
      self.total_amount = 0
    end
  end

  def save
    if self.valid?
      CSV.foreach(self.file.path, :col_sep => "\t", headers: true) do |record|
        item_price =  record["item price"]
        purchase_count = record["purchase count"]

        user = User.find_or_create_by_name(record["purchaser name"])
        merchant = Merchant.find_or_create_by_name_and_address(record["merchant name"], record["merchant address"])
        item = merchant.items.find_or_create_by_description_and_price(record["item description"], item_price)
        Order.create!(item: item, user: user, count: purchase_count)

        self.total_amount += item_price.to_f * purchase_count.to_i
      end
      true
    end
  end

  def persisted?
    false
  end
end
