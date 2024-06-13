scoreboard players add @s ActionTime 1
execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=51}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=61}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=71}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"taunt"}
data remove entity @s[scores={ActionTime=80}] data.animation
tag @s[scores={ActionTime=80}] remove laugh
scoreboard players set @s[scores={ActionTime=80}] ActionTime 0