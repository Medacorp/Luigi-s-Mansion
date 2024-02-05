scoreboard players add @s[scores={Dialog=2..},tag=!vanish] Dialog 1
execute if block 684 113 -30 minecraft:air run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..101},tag=!vanish] run function luigis_mansion:old_entities/ghost/turn_visible
execute if entity @s[scores={Dialog=1},tag=!vanish] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:old_entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.lydia.surprise hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=40}] AnimationProgress 0
execute if entity @s[scores={Dialog=50}] run playsound luigis_mansion:entity.lydia.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=60},tag=!vanish] VulnerableTime 40
execute if entity @s[scores={Dialog=60},tag=!vanish] run function luigis_mansion:old_entities/ghost/turn_visible_no_equipment
execute if entity @s[scores={Dialog=60},tag=!vanish] unless data storage luigis_mansion:data current_state.current_data.technical_data{lydia_spoke:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.lydia","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.lydia.draft"}]}
execute if entity @s[scores={Dialog=60},tag=!vanish] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {lydia_spoke:1b}
execute if entity @s[scores={Dialog=100},tag=!vanish] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=100},tag=!vanish] run teleport @s ~ ~ ~ facing 689 111.6 -27
execute if entity @s[scores={Dialog=110},tag=!vanish] run teleport @s ~ ~ ~ facing 685 111.6 -27
execute if entity @s[scores={Dialog=136},tag=!vanish] run teleport @s ~ ~ ~ facing 685 111.6 -30
execute if entity @s[scores={Dialog=136..163},tag=!vanish] run fill 684 112 -27 684 115 ~ minecraft:white_wool
execute if entity @s[scores={Dialog=163},tag=!vanish] run teleport @s ~ ~ ~ facing 689 111.6 -27
execute if entity @s[scores={Dialog=197},tag=!vanish] run teleport @s ~ ~ ~ facing 690 111.6 -26
execute if entity @s[scores={Dialog=212},tag=!vanish] run teleport @s ~ ~ ~ 135 0
execute at @s[scores={Dialog=100..212},tag=!vanish] run function luigis_mansion:old_entities/ghost/move_forward
tag @s[scores={Dialog=212}] add vanish
scoreboard players set @s[scores={Dialog=212}] Dialog 0

execute at @s[scores={Dialog=40..99},tag=!vanish] run function luigis_mansion:old_animations/lydia/complain
execute at @s[scores={Dialog=100..211},tag=!vanish] run function luigis_mansion:old_animations/lydia/move
execute at @s[scores={Dialog=..98},tag=!vanish] run function luigis_mansion:old_animations/lydia/idle