execute at @e[tag=king_boo,limit=1] run tag @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] add target
scoreboard players set #temp Move 50
execute at @s facing entity @a[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @a[tag=target,limit=1,distance=..8] rotated ~ 0 run function luigis_mansion:entities/bowser/move_forward
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=15}] ArmorItems[3].tag.CustomModelData set value 91
execute if entity @s[scores={ActionTime=15}] run playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=20}] run function luigis_mansion:entities/bowser/spit_ice
data modify entity @s[scores={ActionTime=25}] ArmorItems[3].tag.CustomModelData set value 88
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @a[tag=target,limit=1] remove target