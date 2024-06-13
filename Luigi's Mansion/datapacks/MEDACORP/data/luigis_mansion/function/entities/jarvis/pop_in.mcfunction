scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.vanish hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"pop_in"}
tag @s[scores={ActionTime=15}] remove visible
tag @s[scores={ActionTime=20}] remove pop_in
data remove entity @s[scores={ActionTime=20}] data.animation
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0