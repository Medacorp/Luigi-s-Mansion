scoreboard players add @s[scores={Dialog=2..}] Dialog 1
execute if block 684 113 -30 minecraft:air run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..2}] run function luigis_mansion:entities/lydia/turn_visible
execute if entity @s[scores={Dialog=1}] at @a[tag=same_room,gamemode=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/lydia/turn_invisible
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.lydia.surprise hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=40}] add complain
scoreboard players set @s[scores={Dialog=40}] AnimationProg 0
execute if entity @s[scores={Dialog=50}] run playsound luigis_mansion:entity.lydia.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=60}] VulnerableTime 40
execute if entity @s[scores={Dialog=60}] run function luigis_mansion:entities/lydia/drop_brush
tag @s[scores={Dialog=100}] remove complain
tag @s[scores={Dialog=100}] add move
execute if entity @s[scores={Dialog=60}] unless data storage luigis_mansion:data current_state.current_data.technical_data{lydia_spoke:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.lydia","color":"green"},{"translate":"luigis_mansion:message.lydia.draft"}]}
execute if entity @s[scores={Dialog=60}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {lydia_spoke:1b}
execute if entity @s[scores={Dialog=100}] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=100}] run teleport @s ~ ~ ~ facing 689 111.5 -27
execute if entity @s[scores={Dialog=110}] run teleport @s ~ ~ ~ facing 685 111.5 -27
execute if entity @s[scores={Dialog=136}] run teleport @s ~ ~ ~ facing 685 111.5 -30
execute if entity @s[scores={Dialog=136..163}] run fill 684 112 -27 684 115 ~ minecraft:white_wool
execute if entity @s[scores={Dialog=163}] run teleport @s ~ ~ ~ facing 689 111.5 -27
execute if entity @s[scores={Dialog=197}] run teleport @s ~ ~ ~ facing 690 111.5 -26
execute if entity @s[scores={Dialog=212}] run teleport @s ~ ~ ~ 135 0
execute at @s[scores={Dialog=100..212}] run teleport @s ^ ^ ^0.15
tag @s[scores={Dialog=212}] remove move
tag @s[scores={Dialog=212}] add vanish
scoreboard players set @s[scores={Dialog=212}] Dialog 0 