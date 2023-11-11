summon minecraft:marker ~ ~ ~ {Tags:["wait_location","dead"]}
execute store result entity @e[tag=wait_location,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=wait_location,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute positioned as @e[tag=wait_location,limit=1] run teleport @s[tag=!modifying_inventory,gamemode=!spectator] ~ ~ ~
kill @e[tag=wait_location,limit=1]
tellraw @s[tag=!got_selection_menu_how_to] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.luigis_mansion","color":"green"},{"translate":"luigis_mansion:message.selection_menu_help"}]}
tag @s add got_selection_menu_how_to