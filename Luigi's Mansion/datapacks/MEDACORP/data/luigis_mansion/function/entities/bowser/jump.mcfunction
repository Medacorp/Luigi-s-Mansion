scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"duck"}
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"get_up"}
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.bowser.jump hostile @a[tag=same_room] ~ ~ ~ 3
execute at @s[scores={ActionTime=31..55}] run teleport @s ~ ~1 ~
execute at @s[scores={ActionTime=55..70}] positioned ~ ~-25 ~ unless entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] facing entity @e[tag=same_room,tag=luigi,sort=random,limit=1] feet rotated ~ 0 positioned as @s run teleport @s ^ ^ ^1 ~ 0
data modify entity @s[scores={ActionTime=55}] data.animation set value {namespace:"luigis_mansion",id:"crouch"}
execute at @s[scores={ActionTime=56..80}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={ActionTime=80}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={ActionTime=100}] data.animation set value {namespace:"luigis_mansion",id:"short_roar"}
tag @s[scores={ActionTime=140}] remove jump
data remove entity @s[scores={ActionTime=140}] data.animation
scoreboard players reset @s[scores={ActionTime=140}] ActionTime

execute unless entity @s[scores={ActionTime=56..80}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[scores={ActionTime=56..80}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/collide
execute if entity @s[scores={ActionTime=56..80}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/crush
execute if entity @s[scores={ActionTime=56..80}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/crush