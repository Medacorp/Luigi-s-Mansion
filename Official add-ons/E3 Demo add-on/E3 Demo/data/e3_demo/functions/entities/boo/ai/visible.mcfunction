tag @s[tag=in_vacuum] add flee
function luigis_mansion:entities/ghost/ai
data remove entity @s data.animation
data modify entity @s[tag=shy] data.animation set value {namespace:"e3_demo",id:"shy"}
data modify entity @s[tag=flee] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute at @s[tag=shy,tag=!flee] at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] run function luigis_mansion:entities/ghost/set_target
execute at @s[tag=shy,tag=!flee] facing entity @e[tag=same_room,tag=target,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players add @s[tag=!shy,tag=!flee] Time 1
execute at @s[scores={Time=40}] facing entity @e[tag=same_room,tag=target,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Time=40}] Time 0
tag @s remove flee

tag @s remove shy
execute at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^5 run tag @s[distance=..5] add shy

scoreboard players set @s[tag=shy] TargetTask 0
scoreboard players set @s[tag=!shy] TargetTask 1

execute at @s[tag=!dead,tag=!removed_from_existence] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function e3_demo:entities/boo/collide with entity @s data.entity