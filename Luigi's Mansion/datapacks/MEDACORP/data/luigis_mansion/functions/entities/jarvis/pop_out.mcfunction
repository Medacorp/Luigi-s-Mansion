scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"pop_out"}
teleport @s[scores={ActionTime=1}] ~ ~-1 ~
teleport @s[scores={ActionTime=6..15}] ~ ~0.1 ~
tag @s[scores={ActionTime=6}] add visible
tag @s[scores={ActionTime=20}] remove pop_out
data remove entity @s[scores={ActionTime=20}] data.animation
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0