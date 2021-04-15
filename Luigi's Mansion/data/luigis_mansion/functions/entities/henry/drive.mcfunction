execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[scores={VulnerableTime=0},tag=!vanish] run function luigis_mansion:entities/henry/collide

scoreboard players add @s[tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!carless,scores={VacuumTime=40}] run function luigis_mansion:entities/henry/lose_car
tag @s[tag=carless,scores={VulnerableTime=0}] add vanish

execute at @s[tag=!hurt,tag=!fleeing,tag=!collided,tag=!vanish,scores={StunTime=0},tag=!carless] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!fleeing,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,scores={StunTime=0,SpawnTime=20..},tag=!carless] run function luigis_mansion:entities/ghost/move_forward
