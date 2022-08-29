execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
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

#none set = randomly 2, 3 or 4
#out of range = 3
execute at @s[tag=1] rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual"]}
execute at @s[tag=2] rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual"]}
execute at @s[nbt={OnGround:1b},tag=3] rotated ~ 0 run summon minecraft:marker ^ ^2.1 ^1 {Tags:["interact","manual"]}
execute at @s[nbt={OnGround:0b},tag=3] rotated ~ 0 run summon minecraft:marker ^ ^-0.9 ^1 {Tags:["interact","manual"]}
tag @s add searcher
scoreboard players add @s InteractionTime 1
execute if entity @s[scores={InteractionTime=2}] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/get_animation
scoreboard players set @s[tag=not_facing,scores={IdleTime=0..}] InteractionType 3
execute unless entity @s[scores={InteractionType=1..}] if predicate luigis_mansion:1_3 run scoreboard players set @s[scores={IdleTime=0..}] InteractionType 2
execute unless entity @s[scores={InteractionType=1..}] if predicate luigis_mansion:50_50 run scoreboard players set @s[scores={IdleTime=0..}] InteractionType 3
execute unless entity @s[scores={InteractionType=1..}] run scoreboard players set @s[scores={IdleTime=0..}] InteractionType 4
execute unless entity @s[scores={InteractionType=1..4}] run scoreboard players set @s[scores={IdleTime=0..}] InteractionType 3
scoreboard players operation #temp Room = @s Room
execute if entity @s[scores={InteractionType=3}] run tag @e[tag=interact,tag=manual,limit=1] add long_shake
execute if entity @s[scores={InteractionTime=2},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=2,InteractionType=1}] run function luigis_mansion:blocks/search_sound/wall
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={InteractionTime=2,InteractionType=3,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={InteractionTime=9,InteractionType=2},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=9,InteractionType=4},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=17},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/search
scoreboard players set @s[scores={InteractionTime=2}] Sound 20
tag @s[scores={InteractionTime=17}] remove not_facing
tag @s[scores={InteractionTime=17}] remove 1
tag @s[scores={InteractionTime=17}] remove 2
tag @s[scores={InteractionTime=17}] remove 3
scoreboard players reset @s[scores={InteractionTime=17}] InteractionType
scoreboard players reset @s[scores={InteractionTime=17}] InteractionTime
kill @e[tag=interact,tag=manual,limit=1]
tag @s remove searcher
scoreboard players reset #temp Room
scoreboard players reset @s YellTime
function luigis_mansion:entities/player/animation/set/no_idle