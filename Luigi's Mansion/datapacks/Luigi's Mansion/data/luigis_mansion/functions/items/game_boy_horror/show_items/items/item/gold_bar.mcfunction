function luigis_mansion:items/game_boy_horror/show_items/check_money/gold_bar
tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.game_boy_horror.money","with":[{"type":"translatable","translate":"luigis_mansion:item.gold_bar"},{"type":"score","score":{"objective":"Money","name":"#temp2"}},{"type":"score","score":{"objective":"Money","name":"#temp"}}]}]}
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money