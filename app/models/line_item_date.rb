class LineItemDate < ApplicationRecord
  belongs_to :quote

  validates :date, presence: true, uniqueness: {scope: :quote_id}

  scope :ordered, -> { order(date: :asc) }

  broadcasts_to ->(line_item_date) { [line_item_date.quote, "line_item_dates"] }, locals: {line_item_date: self}, inserts_by: :prepend
  # after_create_commit -> { broadcast_prepend_later_to [line_item_date.quote, "line_item_dates"], partial: "line_item_dates/line_item_date", locals: {quote: quote, line_item_date: self}, target: "quotes#show" }

  def previous_date
    quote.line_item_dates.ordered.where("date < ?", date).last
  end
end
