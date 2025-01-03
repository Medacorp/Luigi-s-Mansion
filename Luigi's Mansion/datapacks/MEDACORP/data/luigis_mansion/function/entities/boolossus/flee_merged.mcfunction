execute facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute store result score @s HomeRotation run data get entity @s Rotation[0]
scoreboard players add @s Wave 1
execute if entity @s[scores={Wave=31..}] run scoreboard players set #temp Move 0
execute if entity @s[scores={Wave=31..}] at @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] run teleport @s ^ ^ ^5
execute if entity @s[scores={Wave=..30}] run scoreboard players set #temp Move 45
execute if entity @s[scores={Wave=90}] run scoreboard players set #temp Move 20
scoreboard players set @s[scores={Wave=90}] Wave 30
execute if entity @s[scores={Wave=30..}] run tag @s remove hit_floor
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move/forward
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"flee"}