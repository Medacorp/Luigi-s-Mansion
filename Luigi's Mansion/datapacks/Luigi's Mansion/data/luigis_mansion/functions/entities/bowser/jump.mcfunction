scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
teleport @s[scores={ActionTime=1..20}] ^ ^-0.15 ^0.1
scoreboard players set @s[scores={ActionTime=21}] AnimationProg 0
teleport @s[scores={ActionTime=21..40}] ^ ^0.15 ^-0.1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.bowser.jump hostile @a[tag=same_room] ~ ~ ~ 3
execute at @s[scores={ActionTime=30..49}] run teleport @s ~ ~1 ~
execute at @s[scores={ActionTime=30..49}] as @e[tag=this_model,tag=right_leg,limit=1] at @s run teleport @s ~ ~1 ~
execute at @s[scores={ActionTime=30..49}] as @e[tag=this_model,tag=left_leg,limit=1] at @s run teleport @s ~ ~1 ~
execute if entity @s[scores={ActionTime=50}] at @e[tag=same_room,tag=!spectator,tag=player,sort=random,limit=1] run teleport @s ~ 70 ~ ~ 0
scoreboard players set @s[scores={ActionTime=41..50}] AnimationProg 0
execute at @s[scores={ActionTime=51..80}] as @e[tag=this_model,tag=right_leg,limit=1] at @s run teleport @s ~ ~-1 ~
execute at @s[scores={ActionTime=51..80}] as @e[tag=this_model,tag=left_leg,limit=1] at @s run teleport @s ~ ~-1 ~
teleport @s[scores={ActionTime=51..70}] ^ ^-0.15 ^0.1
scoreboard players set @s[scores={ActionTime=73..100}] AnimationProg 0
execute at @s[scores={ActionTime=51..80}] run teleport @s ~ ~-1 ~
tag @s[scores={ActionTime=80}] add can_decapitate
tag @s[scores={ActionTime=100}] remove can_decapitate
execute if entity @s[scores={ActionTime=80}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={ActionTime=101}] AnimationProg 0
teleport @s[scores={ActionTime=101..120}] ^ ^0.15 ^-0.1
teleport @s[scores={ActionTime=140}] ~ 40 ~
tag @s[scores={ActionTime=140}] remove jump
scoreboard players set @s[scores={ActionTime=140}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=140}] ActionTime

execute at @s[scores={ActionTime=1..20}] run function luigis_mansion:animations/bowser/duck
execute at @s[scores={ActionTime=21..40}] run function luigis_mansion:animations/bowser/get_up
execute at @s[scores={ActionTime=41..50}] run function luigis_mansion:animations/bowser/idle
execute at @s[scores={ActionTime=51..72}] run function luigis_mansion:animations/bowser/duck
execute at @s[scores={ActionTime=73..140}] run function luigis_mansion:animations/bowser/roar