scoreboard players add @s[scores={Dialog=2..}] Dialog 1
execute if block 684 113 -29 minecraft:air run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1..101}] add visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.lydia.surprise hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=50}] run playsound luigis_mansion:entity.lydia.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=60}] VulnerableTime 40
execute if entity @s[scores={Dialog=60}] unless data storage luigis_mansion:data current_state.current_data.technical_data{lydia_spoke:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.lydia","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.lydia.draft"}]}
execute if entity @s[scores={Dialog=60}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {lydia_spoke:1b}
execute if entity @s[scores={Dialog=100}] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=100}] run function luigis_mansion:entities/ghost/set_specific_path {index:0}
execute if entity @s[scores={Dialog=2..135}] run fill 684 112 -28 684 115 -31 minecraft:air
execute if entity @s[scores={Dialog=136..163}] run fill 684 112 -27 684 115 ~ minecraft:white_wool
execute if entity @s[scores={Dialog=164..}] run fill 684 112 -27 684 115 -31 minecraft:white_wool
tag @s[scores={Dialog=212}] add vanish
scoreboard players set @s[scores={Dialog=212}] Dialog 0

data modify entity @s[scores={Dialog=40..99}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
data modify entity @s[scores={Dialog=100..211}] data.animation set value {namespace:"luigis_mansion",id:"move"}
data remove entity @s[scores={Dialog=..39}] data.animation