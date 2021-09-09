scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
teleport @s[scores={ActionTime=1..20}] ^ ^-0.15 ^0.1
scoreboard players set @s[scores={ActionTime=21}] AnimationProg 0
teleport @s[scores={ActionTime=21..40}] ^ ^0.15 ^-0.1
execute at @s[scores={ActionTime=30..49}] run teleport @s ~ ~1 ~
execute if entity @s[scores={ActionTime=50}] at @e[tag=same_room,tag=!spectator,sort=random,limit=1] run teleport @s ~ 70 ~ ~ 0
scoreboard players set @s[scores={ActionTime=51}] AnimationProg 0
teleport @s[scores={ActionTime=51..70}] ^ ^-0.15 ^0.1
scoreboard players set @s[scores={ActionTime=81}] AnimationProg 0
teleport @s[scores={ActionTime=81..100}] ^ ^0.15 ^-0.1
execute at @s[scores={ActionTime=51..80}] run teleport @s ~ ~-1 ~
tag @s[scores={ActionTime=120}] remove jump
scoreboard players set @s[scores={ActionTime=120}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=120}] ActionTime

execute if entity @s[scores={ActionTime=1..20}] run function luigis_mansion:animations/bowser/duck
execute if entity @s[scores={ActionTime=21..40}] run function luigis_mansion:animations/bowser/get_up
execute if entity @s[scores={ActionTime=51..70}] run function luigis_mansion:animations/bowser/duck
execute if entity @s[scores={ActionTime=81..120}] run function luigis_mansion:animations/bowser/roar