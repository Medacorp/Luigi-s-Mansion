scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"breathe_fire"}
execute if entity @s[scores={ActionTime=20}] run scoreboard players set @s Time 0
execute if entity @s[scores={ActionTime=21..41}] run scoreboard players add @s Time 15
execute if entity @s[scores={ActionTime=41..81}] run scoreboard players remove @s Time 15
execute if entity @s[scores={ActionTime=81..121}] run scoreboard players add @s Time 15
execute if entity @s[scores={ActionTime=21..121}] store result score #temp Time run data get entity @s Rotation[0] 10
execute if entity @s[scores={ActionTime=21..121}] unless score #mirrored Selected matches 1 store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp Time -= @s Time
execute if entity @s[scores={ActionTime=21..121}] if score #mirrored Selected matches 1 store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp Time += @s Time
execute if entity @s[scores={ActionTime=21..121}] run data modify storage luigis_mansion:data entity set value {damage:{}}
execute if entity @s[scores={ActionTime=21..121}] run data modify storage luigis_mansion:data entity.damage.attack set from entity @s data.damage.breathe_fire
execute if entity @s[scores={ActionTime=21..121}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^7 run function luigis_mansion:spawn_entities/burning_floor
execute if entity @s[scores={ActionTime=21..121}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fire"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if entity @s[scores={ActionTime=21..121}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.breathe_fire
execute if entity @s[scores={ActionTime=21..121}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^4 as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=21..121}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^1 ^0.5 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^0.5 ^6 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^-1 ^0.5 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^0.8 ^0.6 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^0.6 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^-0.8 ^0.6 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^0.6 ^0.7 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^0.7 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^-0.6 ^0.7 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^0.4 ^0.8 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^0.8 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^-0.4 ^0.8 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^0.2 ^0.9 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^0.9 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^-0.2 ^0.9 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run particle minecraft:block{block_state:{Name:"minecraft:fire"}} ^ ^1 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute if entity @s[scores={ActionTime=21..121}] run teleport @s ~ ~ ~ ~ ~
scoreboard players reset #temp Time
tag @s[scores={ActionTime=140}] remove breathe_fire
data remove entity @s[scores={ActionTime=140}] data.animation
scoreboard players reset @s[scores={ActionTime=140}] Time
scoreboard players reset @s[scores={ActionTime=140}] ActionTime