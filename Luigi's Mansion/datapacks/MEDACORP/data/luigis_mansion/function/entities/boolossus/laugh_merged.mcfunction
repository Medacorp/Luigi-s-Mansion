scoreboard players add @s ActionTime 1
execute facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0