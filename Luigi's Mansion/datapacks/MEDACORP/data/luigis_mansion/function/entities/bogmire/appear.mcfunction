scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1}] add visible
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bogmire.appear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear"}
data remove entity @s[scores={ActionTime=30}] data.animation
tag @s[scores={ActionTime=30}] remove appear
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0