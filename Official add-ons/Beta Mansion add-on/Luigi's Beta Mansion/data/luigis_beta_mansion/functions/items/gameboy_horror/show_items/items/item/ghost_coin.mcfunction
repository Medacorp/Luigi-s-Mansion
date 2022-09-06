function luigis_beta_mansion:items/gameboy_horror/show_items/check_money/ghost_coin
tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.money","with":[{"translate":"luigis_beta_mansion:item.ghost_coin"},{"score":{"objective":"Money","name":"#temp2"}},{"score":{"objective":"Money","name":"#temp"}}]}]}
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money