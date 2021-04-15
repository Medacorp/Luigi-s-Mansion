execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[scores={VulnerableTime=0},tag=!vanish] run function luigis_mansion:entities/orville/collide

scoreboard players add @s[tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!planeless,scores={VacuumTime=40}] run function luigis_mansion:entities/orville/lose_plane
tag @s[tag=planeless,scores={VulnerableTime=0}] add vanish

scoreboard players add @s WaitTime 1
execute if entity @s[scores={WaitTime=1..119}] run function luigis_mansion:entities/orville/hover
execute if entity @s[scores={WaitTime=120..}] run function luigis_mansion:entities/orville/attack
execute if entity @s[scores={WaitTime=140}] run function luigis_mansion:spawn_entities/bomb
tag @s[scores={WaitTime=160}] remove at_height
scoreboard players set @s[scores={WaitTime=160}] WaitTime 0