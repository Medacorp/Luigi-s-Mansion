scoreboard players add @s[scores={ActionTime=1..10}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[tag=was_idle] run scoreboard players set @s ActionTime 1
tag @s remove was_idle

scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s[scores={ActionTime=1..10}] run function luigis_mansion:old_animations/bowling_ghost/throw_ball
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:entity.bowling_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^0.2 ^0.4 ~ ~
execute if entity @s[scores={ActionTime=2}] run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^-0.4 ^0.2 ~ ~
execute if entity @s[scores={ActionTime=3}] run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^-0.4 ^-0.2 ~ ~
execute if entity @s[scores={ActionTime=4}] run teleport @e[tag=this_bowling_ball,limit=1] ^ ^-1 ^0.5 ~ ~
execute if entity @s[scores={ActionTime=5}] run tag @e[tag=this_bowling_ball,limit=1] remove held

scoreboard players set @s[scores={ActionTime=10}] AnimationProgress 0
execute at @s[scores={ActionTime=10..11}] run function luigis_mansion:old_animations/bowling_ghost/look
scoreboard players set @s[scores={ActionTime=11},tag=!laugh,tag=!complain] ActionTime 10
tag @s[scores={ActionTime=11}] remove attack
scoreboard players set @s[scores={ActionTime=11}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=11}] ActionTime 0