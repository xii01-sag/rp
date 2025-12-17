items <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  itemCategory = c("Electronics", "Desktop Supplies", "Office Supplies", "USB", "CD Drive"),
  price = c(15000, 500, 300, 2000, 350)
)
print(items)
high_price_items <- subset(items, price >= 350)
print(high_price_items)
supply_items <- subset(items, itemCategory %in% c("Office Supplies", "Desktop Supplies"))
print(supply_items)
item_details <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  ItemQtyonHand = c(10, 50, 200, 15, 30),
  ItemReorderLvl = c(2, 10, 50, 5, 8)
)
print(item_details)
merged_data <- merge(items, item_details, by = "itemCode")
print(merged_data)
