teleport @s[tag=!big] ~ ~1 ~
teleport @s[tag=big] ~ ~0.4 ~
scoreboard players set #temp Move 6
execute if entity @s[scores={Move=1..}] run scoreboard players set #temp Move 10
execute at @s[tag=spit] run function luigis_mansion:entities/ball/move_forward
execute at @s[tag=chauncey,tag=!vacuumable] run function luigis_mansion:entities/ball/move_forward
execute at @s[scores={Move=1..}] run function luigis_mansion:entities/ball/move
tag @s add me
tag @e[tag=ball,tag=big,tag=!me,sort=nearest,distance=..5,limit=1] add target
execute at @s[tag=big] positioned ~ ~-0.4 ~ facing entity @e[tag=target,limit=1] feet positioned ^ ^ ^2 if entity @e[tag=target,distance=..1,limit=1] run function luigis_mansion:entities/ball/collide
tag @e[tag=target,limit=1] remove target
tag @s remove me
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] if block ~ ~-0.3 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.3 ~
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] unless block ~ ~-0.3 ~ #luigis_mansion:all_ignore align y run teleport @s ~ ~ ~
tag @s[tag=collision,tag=chauncey,tag=!spit,tag=!real] add dead
tag @s[tag=collision,tag=chauncey,tag=!spit,tag=real] add vacuumable
tag @s[tag=collision,tag=chauncey,tag=spit,tag=vacuumable] add dead
tag @s[tag=collision,tag=chauncey,tag=!vacuumable] remove in_vacuum
tag @s[tag=collision,tag=shadow,tag=spit] add dead
tag @s[tag=shadow,tag=!spit,tag=!in_vacuum,tag=!can_spit_2] add dead
execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=in_vacuum,tag=!can_spit_2] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=spit] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=chauncey,tag=!vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=spike_ball,scores={Move=1..}] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
scoreboard players remove @s[tag=spike_ball] Move 1
scoreboard players set @s[tag=can_spit_2,tag=spike_ball] Move 0
tag @s[tag=collision,tag=boo] add dead
tag @s[tag=collision,tag=spike_ball] add explode
tag @s[tag=collision] remove spit
tag @s[tag=collision] remove collision
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,gamemode=!spectator,tag=vacuuming] facing entity @p[gamemode=!spectator,tag=vacuuming] feet if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,gamemode=!spectator,tag=vacuuming] facing entity @p[gamemode=!spectator,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,gamemode=!spectator,tag=vacuuming] facing entity @p[gamemode=!spectator,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=in_vacuum] at @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:doors run teleport @s ^ ^ ^0.2 ~ ~
execute at @s[tag=!in_vacuum,tag=chauncey] run effect give @a[distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[tag=!in_vacuum,tag=chauncey] run scoreboard players set @a[distance=..1,gamemode=!spectator] ForcedDamage 4
execute at @p[gamemode=!spectator,tag=vacuuming] if block ^ ^ ^1 #luigis_mansion:all_ignore run teleport @s[tag=big,tag=can_spit] ^ ^ ^1 ~ ~
execute at @p[gamemode=!spectator,tag=vacuuming] if block ^ ^ ^2 #luigis_mansion:all_ignore run teleport @s[tag=big,tag=can_spit] ^ ^ ^2 ~ ~
scoreboard players add @s[tag=spike_ball] ActionTime 1
tag @s[tag=spike_ball,scores={ActionTime=200}] add explode
execute at @s if entity @a[gamemode=!spectator,distance=..1,limit=1] run tag @s[tag=spike_ball,tag=!in_vacuum] add explode
execute at @s if entity @e[tag=bowser,distance=..2,limit=1] run tag @s[tag=spike_ball,tag=!in_vacuum] add explode
execute at @s[tag=explode] run function luigis_mansion:entities/ball/spike_explode
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s run teleport @s[tag=!big] ~ ~-1 ~
execute at @s run teleport @s[tag=big] ~ ~-0.4 ~