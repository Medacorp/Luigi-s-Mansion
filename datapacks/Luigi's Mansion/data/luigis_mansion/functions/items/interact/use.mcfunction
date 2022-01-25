execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]

#type 1 = wall (wall sound)
#type 2 = wall
#type 3 = hump
#type 4 = knock
#type 5 = small chest
#none set = randomly 2 or 3
execute unless entity @s[scores={InteractionType=1..}] if predicate luigis_mansion:1_3 run scoreboard players set @s InteractionType 2
execute unless entity @s[scores={InteractionType=1..}] if predicate luigis_mansion:50_50 run scoreboard players set @s InteractionType 3
execute unless entity @s[scores={InteractionType=1..}] run scoreboard players set @s InteractionType 4
scoreboard players add @s InteractionTime 1
scoreboard players operation #temp Room = @s Room
tag @s add searcher
execute at @s rotated ~ 0 run summon minecraft:marker ^ ^0.5 ^1 {Tags:["interact","manual"]}
execute if entity @s[scores={InteractionType=3}] run tag @e[tag=interact,tag=manual,limit=1] add long_shake
execute if entity @s[scores={InteractionTime=..21}] run tag @e[tag=interact,tag=manual,limit=1] add sound
execute if entity @s[scores={InteractionTime=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=2,InteractionType=1}] run playsound luigis_mansion:block.search.wall.1 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=12,InteractionType=1}] run playsound luigis_mansion:block.search.wall.2 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=2,InteractionType=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=12,InteractionType=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={InteractionTime=21,InteractionType=3}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=12,InteractionType=4..5}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=22}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
scoreboard players set @s[scores={InteractionTime=2}] Sound 30
scoreboard players reset @s[scores={InteractionTime=22}] InteractionType
scoreboard players reset @s[scores={InteractionTime=22}] InteractionTime
kill @e[tag=interact,tag=manual,limit=1]
tag @s remove searcher
scoreboard players reset #temp Room
scoreboard players reset @s YellTime
function luigis_mansion:entities/player/idle/reset