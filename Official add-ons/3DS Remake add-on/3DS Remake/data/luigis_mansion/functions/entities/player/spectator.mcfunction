tag @s remove grabbed
effect clear @s[tag=flipped_gravity] minecraft:levitation
tag @s remove flipped_gravity
tag @s remove poltergust_malfunction

scoreboard players operation #temp Room = @s LastRoom
execute as @a[tag=!spectator] if score @s Room = #temp Room run scoreboard players reset @a[distance=..0.1,limit=1] LastRoom
scoreboard players reset #temp Room
scoreboard players set @s Sound 0

execute if entity @s[scores={AnimationProgress=1..}] run function luigis_mansion:entities/player/animation/set/none

clear @s minecraft:carved_pumpkin

tellraw @s[scores={ResetChoice=1}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.1"}]}
tellraw @s[scores={ResetChoice=1}] {"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 3"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.no","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 4"}}]}
scoreboard players enable @s[scores={ResetChoice=1}] ResetChoice

tellraw @s[scores={ResetChoice=2}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.no.1"}]}
execute if entity @s[scores={ResetChoice=3}] if score #all_players Totals matches 1 run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.yes.1"}]}
execute if entity @s[scores={ResetChoice=3}] if score #all_players Totals matches 2.. run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.yes.1.more"}]}
execute if entity @s[scores={ResetChoice=3}] run function luigis_mansion:entities/player/reset_mansion
execute if entity @s[scores={ResetChoice=4}] if score #all_players Totals matches 1 run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.no.1"}]}
execute if entity @s[scores={ResetChoice=4}] if score #all_players Totals matches 2.. run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.confirm.no.1.more"}]}
scoreboard players set @s ResetChoice 0

execute if entity @s[tag=!already_added_to_list] run data modify storage luigis_mansion:data current_state.current_data.dead_players append from entity @s UUID
tag @s add already_added_to_list

scoreboard players operation #temp Room = @s Room
execute as @e[tag=ghost,tag=!visible] if score @s Room = #temp Room run tag @s add target
execute at @e[tag=target,tag=hidden] run particle minecraft:dust 0.7 1 0.5 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5 normal @s
execute at @e[tag=target,tag=!hidden] run particle minecraft:dust 0.7 1 0 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @e[tag=target] remove target
scoreboard players reset #temp Room
tag @s add spectator

scoreboard players add @s[tag=gooigi,scores={RespawnTimer=..99}] RespawnTimer 1
execute if entity @s[tag=gooigi,scores={RespawnTimer=100}] if entity @a[distance=..0.1,tag=!gooigi,tag=!portrait_battle] run function 3ds_remake:entities/player/gooigi_respawn