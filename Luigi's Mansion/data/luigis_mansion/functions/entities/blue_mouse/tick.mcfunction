execute if entity @s[tag=dead,tag=normal_death] run playsound luigis_mansion:entity.blue_mouse.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=element_death] run playsound luigis_mansion:entity.blue_mouse.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/vacuumable/blue_mouse
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[tag=spawn] if predicate luigis_mansion:blue_mouse/start_squeeking run tag @s add squeek

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=spawn] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/blue_mouse/collide

tag @s[tag=fleeing] remove squeek
tag @s remove fleeing

execute store result score #temp HomeY run data get entity @s Pos[1] 100
tag @s remove on_floor
execute if score #temp HomeY = @s HomeY run tag @s add on_floor
scoreboard players reset #temp HomeY

scoreboard players operation #temp Room = @s Room
execute as @e[tag=blue_mouse,tag=spawn] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 3.. run tag @s add spawn
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data merge entity @s[tag=spawn,tag=!vacuumable] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:56}}]}
tag @s[tag=spawn] add vacuumable
execute if entity @s[tag=!rotated,tag=spawn] run function luigis_mansion:entities/blue_mouse/move
scoreboard players set #temp Move 2
execute at @s[tag=rotated,tag=!squeek] rotated ~ 0 run function luigis_mansion:entities/blue_mouse/move_forward
execute if entity @s[tag=disappear,tag=!dead,tag=!squeek] run function luigis_mansion:entities/blue_mouse/back_to_start
execute at @s[tag=spawn,tag=!squeek] run function luigis_mansion:animations/mouse/idle
execute if entity @s[tag=squeek] run function luigis_mansion:entities/blue_mouse/squeek