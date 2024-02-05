data modify entity @s ArmorItems[3].tag.CustomModelData set value 88
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if score #temp Time matches 32..90 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if score #temp Time matches -90..28 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players set #temp Move 20
execute at @e[tag=this_model,tag=body,limit=1] positioned ^ ^0.5 ^0.5 run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute at @s unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet run function luigis_mansion:old_entities/bowser/move_forward
execute at @s rotated as @e[tag=this_model,tag=body,limit=1] run teleport @s ~ ~ ~ ~ ~
execute at @s if score #temp Time matches 28..32 if entity @e[tag=temp,distance=..0.7,limit=1] run tag @s add grabbing_head
execute at @s if score #temp Time matches 28..32 if entity @e[tag=temp,distance=..0.7,limit=1] run tag @s remove reattach_head
scoreboard players reset #temp Time
kill @e[tag=temp,limit=1]