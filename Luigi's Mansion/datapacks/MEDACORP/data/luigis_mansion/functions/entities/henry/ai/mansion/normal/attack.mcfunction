execute if entity @s[tag=!no_vehicle] as @e[tag=car,scores={Owner=-2147483648..}] if score @s Owner = #temp GhostNr run tag @s add this_vehicle

execute at @s[tag=no_vehicle] if block ^ ^ ^-0.4 #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=0}] if block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=50..59}] if block ~ ~2.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=40..49}] if block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=30..39}] if block ~ ~2.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=20..29}] if block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=10..19}] if block ~ ~2.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=0..19}] if block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.05 ~
execute at @s[tag=no_vehicle,scores={VulnerableTime=0}] unless block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run scoreboard players set @s VulnerableTime 60
execute if entity @s[tag=!no_vehicle] run function luigis_mansion:entities/henry/ai/mansion/normal/in_vacuum
tag @s[tag=no_vehicle,scores={VulnerableTime=1}] add vanish

tag @s[tag=!visible] add grab_vehicle
execute at @s[tag=grab_vehicle] run function luigis_mansion:entities/henry/ai/mansion/normal/grab_vehicle
data modify entity @s[tag=!no_vehicle,tag=!in_vacuum,tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"drive"}

execute at @s[tag=!no_vehicle,tag=!grab_vehicle,scores={TargetTask=0}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute at @s[tag=!no_vehicle] rotated ~ 0 run teleport @e[tag=this_vehicle,limit=1] ^ ^-1.2 ^0.4 ~ ~
tag @e[tag=this_vehicle,limit=1] remove this_vehicle

execute if entity @s[scores={VulnerableTime=0},tag=!grab_vehicle] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/henry/collide

scoreboard players set @s TargetTask 0
execute if entity @s[tag=!laugh,tag=!no_vehicle,tag=!grab_vehicle] run function luigis_mansion:entities/henry/ai/mansion/normal/attack_pattern