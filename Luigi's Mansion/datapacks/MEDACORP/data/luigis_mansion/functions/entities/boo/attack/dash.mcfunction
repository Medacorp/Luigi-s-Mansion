scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"dash"}
execute at @s[scores={ActionTime=1}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/boo/move/forward
execute at @s[tag=wall] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] ActionTime 20
tag @s remove wall
tag @s remove rotated
data remove entity @s[scores={ActionTime=20}] data.animation
tag @s[scores={ActionTime=20}] remove attack
scoreboard players reset @s[scores={ActionTime=20}] ActionTime