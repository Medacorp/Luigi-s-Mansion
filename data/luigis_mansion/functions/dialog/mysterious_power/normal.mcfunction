execute unless entity @a[scores={Room=52},gamemode=!spectator,limit=1] run scoreboard players set @s[scores={Dialog=..1320}] Dialog 1799
execute unless entity @a[scores={Room=52},gamemode=!spectator,limit=1] run scoreboard players set @s[scores={Dialog=1400..1704}] Dialog 1799
scoreboard players add @s Dialog 1
scoreboard players set @a[tag=same_room,gamemode=!spectator] Invulnerable 10
execute as @a[distance=..2] at @s run teleport @s ~1 ~ ~
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/mysterious_power
execute if data storage luigis_mansion:data current_state.current_data.technical_data{mysterious_power:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 1400
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.1.more"}]}
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.2"}]}
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.2.more"}]}
execute if entity @s[scores={Dialog=560}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.3"}]}
execute if entity @s[scores={Dialog=560}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.3.more"}]}
execute if entity @s[scores={Dialog=856}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.4"}]}
execute if entity @s[scores={Dialog=856}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.4.more"}]}
execute if entity @s[scores={Dialog=1072}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.5"}]}
execute if entity @s[scores={Dialog=1072}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.5.more"}]}
execute if entity @s[scores={Dialog=1304}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.6"}]}
execute if entity @s[scores={Dialog=1320}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.7"}]}
execute if entity @s[scores={Dialog=1328}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1328}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1328}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1338..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1338..1398}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1398}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 9.0
execute if entity @s[scores={Dialog=1398}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
tag @s[scores={Dialog=1398}] add dead

execute if entity @s[scores={Dialog=1400}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.1"}]}
execute if entity @s[scores={Dialog=1400}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.1.more"}]}
execute if entity @s[scores={Dialog=1512}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.2"}]}
execute if entity @s[scores={Dialog=1512}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.2.more"}]}
execute if entity @s[scores={Dialog=1704}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.3"}]}
execute if entity @s[scores={Dialog=1712}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1712}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1712}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1722..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1722..1782}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1782}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 9.0
tag @s[scores={Dialog=1782}] add dead

execute if entity @s[scores={Dialog=1800}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.1"}]}
execute if entity @s[scores={Dialog=1800}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.1.more"}]}
execute if entity @s[scores={Dialog=1928}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.2"}]}
execute if entity @s[scores={Dialog=1936}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1936}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1936}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1946..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1946..1996}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1996}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 9.0
execute if entity @s[scores={Dialog=1996}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
tag @s[scores={Dialog=1996}] add dead