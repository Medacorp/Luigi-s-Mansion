scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"duck"}
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"get_up"}
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.bowser.jump hostile @a[tag=same_room] ~ ~ ~ 3
execute at @s[scores={ActionTime=30..49}] run teleport @s ~ ~1 ~
execute if entity @s[scores={ActionTime=50}] at @e[tag=same_room,tag=!spectator,tag=player,sort=random,limit=1] run teleport @s ~ ~30 ~ ~ 0
data remove entity @s[scores={ActionTime=41}] data.animation
data modify entity @s[scores={Dialog=80}] data.animation set value {namespace:"luigis_mansion",id:"roar"}
data modify entity @s[scores={Dialog=80..101}] data.initial_animation_progress set value 0
execute at @s[scores={ActionTime=51..80}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={ActionTime=80}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={ActionTime=140}] remove jump
data remove entity @s[scores={ActionTime=140}] data.animation
scoreboard players reset @s[scores={ActionTime=140}] ActionTime

execute unless entity @s[scores={ActionTime=51..85}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[scores={ActionTime=51..85}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide
execute if entity @s[scores={ActionTime=51..85}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/crush
execute if entity @s[scores={ActionTime=51..85}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/crush