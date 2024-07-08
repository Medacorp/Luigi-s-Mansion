tag @s add visible

data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"black_idle"}

scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 1

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/black_bogmire/collide with entity @s data.entity