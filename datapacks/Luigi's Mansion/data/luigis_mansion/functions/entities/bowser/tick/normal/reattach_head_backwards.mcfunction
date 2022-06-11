data modify entity @s ArmorItems[3].tag.CustomModelData set value 88
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if score #temp Time matches -68..90 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if score #temp Time matches -90..-72 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp2 Time run data get entity @s Pose.Head[1]
execute if score #temp2 Time matches -176..0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp2 Time 4
execute if score #temp2 Time matches 0..176 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp2 Time 4
scoreboard players set #temp Move 20
execute at @e[tag=this_model,tag=body,limit=1] positioned ^ ^0.5 ^0.5 run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute at @s unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet run function luigis_mansion:entities/bowser/move_forward
execute at @s rotated as @e[tag=this_model,tag=body,limit=1] run teleport @s ~ ~ ~ ~ ~
execute at @s if score #temp Time matches -71..-69 unless score #temp2 Time matches -176..176 if entity @e[tag=temp,distance=..0.7,limit=1] run tag @s add headless_run
execute at @s if score #temp Time matches -71..-69 unless score #temp2 Time matches -176..176 if entity @e[tag=temp,distance=..0.7,limit=1] run tag @s remove reattach_head_backwards
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
kill @e[tag=temp,limit=1]