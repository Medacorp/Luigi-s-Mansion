teleport @s[tag=!big] ~ ~1 ~
teleport @s[tag=big] ~ ~0.4 ~
execute at @s[tag=boo] unless block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.1
scoreboard players set #temp Move 30
execute if entity @s[tag=spit] run scoreboard players set #temp Move 50
execute if entity @s[scores={Dialog=1..}] run scoreboard players operation #temp Dialog = @s Dialog
execute if entity @s[scores={Dialog=1..}] run scoreboard players operation #temp Dialog /= #2 Constants
execute if entity @s[scores={Dialog=1..}] run scoreboard players operation #temp Move -= #temp Dialog
execute if entity @s[scores={Move=1..}] run scoreboard players operation #temp Move = @s Move
execute if score #temp Move matches 0 run tag @s remove spit
execute if score #temp Move matches 0 run tag @s remove bounced
scoreboard players reset #temp Dialog
scoreboard players add @s[tag=spit] Time 1
scoreboard players add @s[tag=bounced] Dialog 1
execute at @s[tag=spit] run function luigis_mansion:entities/ball/move_forward
scoreboard players set @s[tag=!spit] Time 0
scoreboard players set @s[tag=!bounced] Dialog 0
tag @s[scores={Time=100}] add collision
execute at @s[tag=chauncey,tag=!vacuumable] rotated ~ 0 run function luigis_mansion:entities/ball/move_forward
execute at @s[scores={Move=1..}] run function luigis_mansion:entities/ball/move
tag @s add me
tag @e[tag=ball,tag=!me,sort=nearest,distance=..5,limit=1] add target
execute at @s[tag=big] positioned ~ ~-0.4 ~ facing entity @e[tag=target,limit=1] feet positioned ^ ^ ^2 if entity @e[tag=target,distance=..2,limit=1] run function luigis_mansion:entities/ball/bounce
execute at @s[tag=!big] positioned ~ ~-1 ~ facing entity @e[tag=target,limit=1] feet positioned ^ ^ ^1 if entity @e[tag=target,distance=..1,limit=1] run function luigis_mansion:entities/ball/bounce
tag @e[tag=target,limit=1] remove target
tag @s remove me
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] if block ~ ~-0.3 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.3 ~
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] unless block ~ ~-0.3 ~ #luigis_mansion:all_ignore align y run teleport @s ~ ~ ~
tag @s[tag=collision,tag=chauncey,tag=!spit,tag=!real] add dead
tag @s[tag=collision,tag=chauncey,tag=!spit,tag=real] add vacuumable
tag @s[tag=collision,tag=chauncey,tag=spit,tag=vacuumable] add dead
tag @s[tag=collision,tag=chauncey,tag=!vacuumable] remove in_vacuum
tag @s[tag=collision,tag=shadow,tag=spit] add dead
tag @s[tag=shadow,tag=!spit,tag=!in_vacuum,tag=!can_spit_2,tag=!first_tick] add dead
tag @s[tag=shadow,tag=first_tick] remove first_tick
execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=in_vacuum,tag=!can_spit_2] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=spit] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=chauncey,tag=!vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=spike_ball,scores={Move=1..}] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
scoreboard players remove @s[scores={Move=1..}] Move 5
execute unless entity @s[scores={Move=0..}] run scoreboard players set @s Move 0
scoreboard players set @s[tag=can_spit_2,tag=spike_ball] Move 0
tag @s[tag=collision,tag=boo] add dead
tag @s[tag=collision,tag=spike_ball] add explode
tag @s[tag=collision] remove spit
tag @s[tag=collision] remove bounced
tag @s[tag=collision] remove collision
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=vacuuming] feet if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=in_vacuum] at @p[distance=..1.5,tag=!spectator,tag=vacuuming] positioned ~ ~0.5 ~ run teleport @s ^ ^ ^0.2 ~ ~
execute at @s[tag=!in_vacuum,tag=chauncey] as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[tag=!in_vacuum,tag=chauncey] run effect give @a[distance=..1,tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[tag=!in_vacuum,tag=chauncey] run scoreboard players set @a[distance=..1,tag=!spectator] ForcedDamage 4
execute at @s[tag=!in_vacuum,tag=chauncey] as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[tag=!in_vacuum,tag=chauncey,scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute at @s[tag=!in_vacuum,tag=chauncey,scores={Owner=-2147483648..}] if entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute at @s[tag=!in_vacuum,tag=chauncey,scores={Owner=-2147483648..}] if entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
scoreboard players reset #temp GhostNr
execute at @p[tag=!spectator,tag=vacuuming] if block ^ ^ ^1 #luigis_mansion:all_ignore run teleport @s[tag=big,tag=can_spit] ^ ^ ^1 ~ ~
execute at @p[tag=!spectator,tag=vacuuming] if block ^ ^ ^2 #luigis_mansion:all_ignore run teleport @s[tag=big,tag=can_spit] ^ ^ ^2 ~ ~
data modify entity @s[tag=spike_ball,scores={ActionTime=160}] ArmorItems[3].tag.CustomModelData set value 37
scoreboard players add @s[tag=spike_ball] ActionTime 1
tag @s[tag=spike_ball,scores={ActionTime=200}] add explode
execute at @s if entity @a[tag=!spectator,distance=..1,limit=1] run tag @s[tag=spike_ball,tag=!in_vacuum,tag=!can_spit_2,tag=!spit] add explode
execute at @s if entity @e[tag=bowser,distance=..2,limit=1] run tag @s[tag=spike_ball,tag=!in_vacuum] add explode
execute at @s[tag=explode] run function luigis_mansion:entities/ball/spike_explode
execute at @s if entity @p[distance=..1.5,tag=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit
execute at @s if entity @p[distance=..1.5,tag=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2,scores={Move=1..}] remove can_spit
tag @s[tag=!in_vacuum,tag=can_spit_2,scores={Move=1..}] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s run teleport @s[tag=!big] ~ ~-1 ~
execute at @s run teleport @s[tag=big] ~ ~-0.4 ~
execute at @s[tag=!big,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s[tag=big,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall