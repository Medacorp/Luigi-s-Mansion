function luigis_mansion:items/game_boy_horror/show_items/check_money/bill
tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.game_boy_horror.money","with":[{"type":"translatable","translate":"luigis_mansion:item.bill"},{"type":"score","score":{"objective":"Money","name":"#temp2"}},{"type":"score","score":{"objective":"Money","name":"#temp"}}]}]}
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money