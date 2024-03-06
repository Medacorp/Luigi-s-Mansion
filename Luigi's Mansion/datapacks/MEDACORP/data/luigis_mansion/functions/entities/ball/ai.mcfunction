execute if entity @s[tag=boo] unless block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ^ ^0.1 ^0.1

# determine movement speed
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
scoreboard players set @s[tag=!bounced] Dialog 0
scoreboard players set @s[tag=!spit] Time 0
tag @s[scores={Time=100}] add collision

# move forward
execute at @s[tag=spit] run function luigis_mansion:entities/ball/move_forward
execute at @s[tag=chauncey,tag=!vacuumable] rotated ~ 0 run function luigis_mansion:entities/ball/move_forward
execute at @s[scores={Move=1..}] run function luigis_mansion:entities/ball/move

# bounce against other balls
tag @s add me
tag @e[tag=ball,tag=!me,sort=nearest,distance=..5,limit=1] add target
execute at @s[tag=big] positioned ~ ~-0.4 ~ facing entity @e[tag=target,limit=1] feet positioned ^ ^ ^2 if entity @e[tag=target,distance=..2,limit=1] run function luigis_mansion:entities/ball/bounce_against_ball
execute at @s[tag=!big] positioned ~ ~-1 ~ facing entity @e[tag=target,limit=1] feet positioned ^ ^ ^1 if entity @e[tag=target,distance=..1,limit=1] run function luigis_mansion:entities/ball/bounce_against_ball
tag @e[tag=target,limit=1] remove target
tag @s remove me

# gravity
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] if block ~ ~-0.3 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.3 ~
execute at @s[tag=!spit] unless entity @s[tag=chauncey,tag=!vacuumable] unless entity @s[scores={Move=1..}] unless block ~ ~-0.3 ~ #luigis_mansion:all_ignore align y run teleport @s ~ ~ ~

# roll animation
execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
execute if entity @s[tag=in_vacuum,tag=!can_spit_2] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute if entity @s[tag=spit] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute if entity @s[tag=chauncey,tag=!vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute if entity @s[tag=spike_ball,scores={Move=1..}] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10

# reset
execute if entity @s[tag=collision] run function luigis_mansion:entities/ball/collision
tag @s[tag=shadow,tag=!spit,tag=!in_vacuum,tag=!can_spit_2,tag=!first_tick] add dead
tag @s[tag=shadow,tag=first_tick] remove first_tick
scoreboard players remove @s[scores={Move=1..}] Move 5
execute unless entity @s[scores={Move=0..}] run scoreboard players set @s Move 0
scoreboard players set @s[tag=can_spit_2,tag=spike_ball] Move 0

#interaction
execute at @s[tag=in_vacuum,tag=!spit,tag=vacuumable] run function luigis_mansion:entities/ball/roll_to_player
execute at @s[tag=!spit,tag=vacuumable] unless entity @s[tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] run function luigis_mansion:entities/billiards_ball/roll_away_from_player
execute at @s[tag=!in_vacuum,tag=chauncey] if entity @e[distance=..1,tag=!spectator,tag=player,limit=1] run function luigis_mansion:entities/ball/hit_player
execute at @s[tag=spike_ball] run function luigis_mansion:entities/ball/spike_ball

execute at @s[tag=in_vacuum,tag=!big,tag=!spit,tag=vacuumable] if entity @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] run tag @s add can_spit
execute at @s[tag=in_vacuum,tag=big,tag=!spit,tag=vacuumable] if entity @p[distance=..3,tag=!spectator,tag=player,tag=vacuuming] run tag @s add can_spit
tag @s[tag=can_spit] add can_spit_2
scoreboard players set @s[tag=can_spit] Move 0
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2,scores={Move=1..}] remove can_spit
tag @s[tag=!in_vacuum,tag=can_spit_2,scores={Move=1..}] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit