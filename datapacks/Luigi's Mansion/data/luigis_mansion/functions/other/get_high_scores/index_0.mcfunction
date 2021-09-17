scoreboard players set #temp Money 0
function luigis_mansion:other/get_high_scores/search/get_high_score
execute if score #temp Time matches 1.. run tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.get_high_score","with":[{"translate":"luigis_mansion:message.get_high_score.normal_hidden"},{"score":{"objective":"Time","name":"#temp"}}]}]}
execute if score #temp Time matches 0 run tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.get_high_score.no_money","with":[{"translate":"luigis_mansion:message.get_high_score.normal_hidden"}]}]}
scoreboard players reset #temp Time