scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute unless entity @a[scores={Room=52},gamemode=!spectator,limit=1] run scoreboard players set @s[scores={Dialog=..1370}] Dialog 1850
execute unless entity @a[scores={Room=52},gamemode=!spectator,limit=1] run scoreboard players set @s[scores={Dialog=1450..1754}] Dialog 1850
scoreboard players set @a[tag=same_room,gamemode=!spectator] Invulnerable 10
execute as @a[distance=..2] at @s run teleport @s ~1 ~ ~
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/mysterious_power
execute if data storage luigis_mansion:data current_state.current_data.technical_data{mysterious_power:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 1450
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=51}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.1"}]}
execute if entity @s[scores={Dialog=51}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.1.more"}]}
execute if entity @s[scores={Dialog=138}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.2"}]}
execute if entity @s[scores={Dialog=138}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.2.more"}]}
execute if entity @s[scores={Dialog=610}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.3"}]}
execute if entity @s[scores={Dialog=610}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.3.more"}]}
execute if entity @s[scores={Dialog=906}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.4"}]}
execute if entity @s[scores={Dialog=906}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.4.more"}]}
execute if entity @s[scores={Dialog=1122}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.5"}]}
execute if entity @s[scores={Dialog=1122}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.5.more"}]}
execute if entity @s[scores={Dialog=1354}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.6"}]}
execute if entity @s[scores={Dialog=1370}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.7"}]}
execute if entity @s[scores={Dialog=1378}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1378}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1378}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1388..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1388..1448}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1448}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 7.0
execute if entity @s[scores={Dialog=1448}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
tag @s[scores={Dialog=1448}] add dead

execute if entity @s[scores={Dialog=1450}] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1490}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1500}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.1"}]}
execute if entity @s[scores={Dialog=1500}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.1.more"}]}
execute if entity @s[scores={Dialog=1612}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.2"}]}
execute if entity @s[scores={Dialog=1612}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.2.more"}]}
execute if entity @s[scores={Dialog=1804}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.repeat.3"}]}
execute if entity @s[scores={Dialog=1812}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1812}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1812}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1822..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1822..1882}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1882}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 7.0
tag @s[scores={Dialog=1882}] add dead

execute if entity @s[scores={Dialog=1900}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.1"}]}
execute if entity @s[scores={Dialog=1900}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.1.more"}]}
execute if entity @s[scores={Dialog=2028}] run tellraw @a[tag=same_room,gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"translate":"luigis_mansion:dialog.mysterious_power.leave.2"}]}
execute if entity @s[scores={Dialog=2036}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=2036}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2036}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=2046..}] as @e[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=2046..2096}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=2096}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 7.0
execute if entity @s[scores={Dialog=2096}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
tag @s[scores={Dialog=2096}] add dead