scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear"}
tag @s[scores={ActionTime=1}] add visible
data remove entity @s[scores={ActionTime=60}] data.animation
tag @s[scores={ActionTime=60}] remove appear
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0