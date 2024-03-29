execute if score #all_players Totals matches 1 run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.yes.1"}]}
execute if score #all_players Totals matches 2.. run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.yes.1.more"}]}
gamemode spectator
execute at @s run function luigis_mansion:entities/player/go_back_to_model
function luigis_mansion:entities/player/selection_menu/close
tag @s remove mansion_reset_menu

execute as @a unless entity @s[scores={Room=-4..-1}] run function luigis_mansion:room/underground_lab/warp_to
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion
function luigis_mansion:data/load
