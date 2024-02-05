data remove entity @s data.target_pos
scoreboard players add @s TargetTime 1
scoreboard players set @s[scores={TargetTime=71..}] TargetTime -70
summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
data modify entity @e[tag=target_pos,limit=1] Pos set from entity @e[tag=target,limit=1,sort=nearest] Pos
data modify entity @e[tag=target_pos,limit=1] Rotation set from entity @e[tag=target,limit=1,sort=nearest] Rotation
execute facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @e[tag=target_pos,distance=..10] rotated ~ ~ run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={TargetTime=6..65}] rotated ~90 ~ run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={TargetTime=66..}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={TargetTime=-5..5}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={TargetTime=..-66}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={TargetTime=-65..-6}] rotated ~-90 ~ run function luigis_mansion:entities/ghost/move_forward
execute at @s run teleport @s ~ ~ ~ ~ 0
execute at @s at @e[tag=target_pos,distance=..10] positioned ^ ^ ^4 run scoreboard players set @s[distance=6..] TargetTask 1
kill @e[tag=target_pos,limit=1]