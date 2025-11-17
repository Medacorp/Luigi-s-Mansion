scoreboard players add @s ActionTime 1
execute facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"taunt"}
data remove entity @s[scores={ActionTime=20}] data.animation
tag @s[scores={ActionTime=20}] remove taunt
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0