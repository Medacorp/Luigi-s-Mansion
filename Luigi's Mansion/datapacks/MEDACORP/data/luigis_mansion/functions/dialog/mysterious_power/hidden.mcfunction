scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
scoreboard players set @a[tag=same_room,gamemode=!spectator] Invulnerable 10
execute if entity @s[scores={Dialog=1..}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=1..2096}] as @a[tag=same_room] run function luigis_mansion:other/music/set/mysterious_power
execute if data storage luigis_mansion:data current_state.current_data.technical_data{mysterious_power:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 1466
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=40}] AnimationProgress 0
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=46}] AnimationProgress 0
execute if entity @s[scores={Dialog=51}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.1"}]}
execute if entity @s[scores={Dialog=51}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.1.more"}]}
execute if entity @s[scores={Dialog=138}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.2"}]}
execute if entity @s[scores={Dialog=138}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.2.more"}]}
execute if entity @s[scores={Dialog=626}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.3"}]}
execute if entity @s[scores={Dialog=626}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.3.more"}]}
execute if entity @s[scores={Dialog=922}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.4"}]}
execute if entity @s[scores={Dialog=922}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.4.more"}]}
execute if entity @s[scores={Dialog=1138}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.5"}]}
execute if entity @s[scores={Dialog=1138}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.5.more"}]}
execute if entity @s[scores={Dialog=1370}] run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.6"}]}
execute if entity @s[scores={Dialog=1386}] run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.7"}]}
execute if entity @s[scores={Dialog=1394}] run playsound luigis_mansion:entity.boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=1394}] AnimationProgress 0
execute if entity @s[scores={Dialog=1394}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1394}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1394}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1404..}] as @e[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1404..1464}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1464}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=1464}] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=1464}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 7.0
execute if entity @s[scores={Dialog=1464}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
tag @s[scores={Dialog=1464}] add dead

execute if entity @s[scores={Dialog=1466}] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1506}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1516}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.repeat.1"}]}
execute if entity @s[scores={Dialog=1516}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.repeat.1.more"}]}
execute if entity @s[scores={Dialog=1628}] if score #players Totals matches 1 run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.repeat.2"}]}
execute if entity @s[scores={Dialog=1628}] if score #players Totals matches 2.. run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.repeat.2.more"}]}
execute if entity @s[scores={Dialog=1820}] run tellraw @a[tag=same_room,gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.repeat.3"}]}
execute if entity @s[scores={Dialog=1828}] run playsound luigis_mansion:entity.boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=1828}] AnimationProgress 0
execute if entity @s[scores={Dialog=1828}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1828}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1828}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 80
execute if entity @s[scores={Dialog=1838..}] as @e[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1838..1898}] as @a[tag=same_room,gamemode=!spectator] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete run teleport @s ~0.5 ~ ~
execute if entity @s[scores={Dialog=1898}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=1898}] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=1898}] run teleport @a[tag=same_room,gamemode=!spectator] 751.0 11 7.0
tag @s[scores={Dialog=1898}] add dead

execute at @s[scores={Dialog=40..45}] run function luigis_mansion:old_animations/boo/taunt
execute at @s[scores={Dialog=1506..1511}] run function luigis_mansion:old_animations/boo/taunt
execute at @s[scores={Dialog=1394..1464}] run function luigis_mansion:old_animations/boo/hurt
execute at @s[scores={Dialog=1828..}] run function luigis_mansion:old_animations/boo/hurt
execute at @s unless entity @s[scores={Dialog=40..45}] unless entity @s[scores={Dialog=1394..1464}] unless entity @s[scores={Dialog=1506..1511}] unless entity @s[scores={Dialog=1828..}] run function luigis_mansion:old_animations/boo/idle