function luigis_mansion:items/game_boy_horror/show_items/check_money/silver_diamond
execute if score #temp Money matches 1.. run tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.game_boy_horror","color":"green"},{"translate":"luigis_mansion:message.game_boy_horror.money","with":[{"translate":"luigis_mansion:item.silver_diamond"},{"score":{"objective":"Money","name":"#temp2"}},{"score":{"objective":"Money","name":"#temp"}}]}]}
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money