execute if entity @s[tag=spit] run scoreboard players set #temp Move 30
execute if entity @s[tag=!spit] run scoreboard players set #temp Move 10
scoreboard players set @s[tag=!vacuumable] SpawnTime 0
scoreboard players add @s[tag=vacuumable] SpawnTime 1
tag @s[scores={SpawnTime=..20}] remove in_vacuum
tag @s[scores={SpawnTime=..20}] remove in_dust
tag @s[scores={SpawnTime=..20}] remove in_fire
tag @s[scores={SpawnTime=..20}] remove in_water
tag @s[scores={SpawnTime=..20}] remove in_ice
execute if entity @s[tag=spit] run function luigis_mansion:entities/wool/spit
execute if entity @s[tag=!in_vacuum,tag=!can_spit_2,tag=vacuumable,tag=!spit] unless data entity @s ArmorItems[3].tag.luigis_mansion.path run function luigis_mansion:entities/wool/set_random_path
execute if entity @s[tag=!in_vacuum,tag=!can_spit_2,tag=vacuumable,tag=!spit] run function luigis_mansion:entities/wool/follow_path
execute at @s[tag=!in_vacuum,tag=!can_spit_2,tag=vacuumable,tag=!spit] if entity @e[tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/wool/hit_player
execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
execute if entity @s[tag=!can_spit_2,tag=vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute at @s[tag=in_vacuum,tag=!spit,tag=vacuumable] run function luigis_mansion:entities/billiards_ball/roll_to_player
execute at @s[tag=!spit,tag=vacuumable] unless entity @s[tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] run function luigis_mansion:entities/billiards_ball/roll_away_from_player
execute at @s[tag=in_vacuum,tag=!spit,tag=vacuumable] if entity @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] run tag @s add can_spit
tag @s[tag=can_spit] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit