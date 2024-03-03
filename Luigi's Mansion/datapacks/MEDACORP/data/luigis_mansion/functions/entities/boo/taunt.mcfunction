scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"taunt"}
execute if entity @a[tag=!spectator,distance=..7] run tag @s[scores={ActionTime=10}] remove taunt
data remove entity @s[tag=!taunt] data.animation
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=11}] ActionTime 1
scoreboard players set @s[tag=!taunt] ActionTime 0
tag @s remove rotated