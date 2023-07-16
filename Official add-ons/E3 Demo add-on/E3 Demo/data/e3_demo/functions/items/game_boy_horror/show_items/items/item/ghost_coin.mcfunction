function e3_demo:items/game_boy_horror/show_items/check_money/ghost_coin
tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.game_boy_horror","color":"green"},{"translate":"luigis_mansion:message.game_boy_horror.money","with":[{"translate":"e3_demo:item.ghost_coin"},{"score":{"objective":"Money","name":"#temp2"}},{"score":{"objective":"Money","name":"#temp"}}]}]}
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money