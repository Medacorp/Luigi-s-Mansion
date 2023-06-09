execute if entity @s[tag=dead] run function luigis_mansion:entities/spark/drop_loot

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=visible] run function luigis_mansion:entities/spark/collide

execute if entity @s[tag=!visible,tag=!turned] run function luigis_mansion:entities/spark/initial_rotation
execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=spark,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] unless entity @e[tag=spark,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

tag @s remove fleeing

data modify entity @s[tag=visible,scores={SpawnTime=1}] ArmorItems[3].id set value "minecraft:diamond_pickaxe"
scoreboard players add @s[tag=visible] SpawnTime 1
execute at @s[scores={SpawnTime=1..}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[tag=visible] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={Turn=0},tag=visible] run function luigis_mansion:entities/spark/turn
data modify entity @s[scores={SpawnTime=140}] ArmorItems[3].tag.CustomModelData set value 106
tag @s[scores={SpawnTime=200}] add explode
execute if entity @s[tag=explode,tag=visible] run execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[tag=explode,tag=visible] run effect give @a[distance=..3,tag=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=explode,tag=visible] run scoreboard players set @a[distance=..3,tag=!spectator] ForcedDamage 4
execute if entity @s[tag=explode,tag=visible] as @a[distance=..3,tag=!spectator] run function luigis_mansion:entities/player/knockback/burn
execute if entity @s[tag=explode,tag=visible] run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
execute if entity @s[tag=explode,tag=visible] run playsound luigis_mansion:entity.ghost.explosion hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=explode,tag=visible] add dead
tag @s[tag=explode,tag=!visible] remove explode
scoreboard players remove @s[scores={Turn=1..},tag=visible] Turn 1
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall