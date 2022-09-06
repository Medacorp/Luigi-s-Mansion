scoreboard players add @s[scores={Dialog=25..}] Dialog 1
scoreboard players add @s[scores={Dialog=23}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,dx=0,dy=3,dz=0] run scoreboard players set @s[scores={Dialog=13..22}] Dialog 23
scoreboard players add @s[scores={Dialog=13..21}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,dx=0,dy=3,dz=0] run scoreboard players set @s[scores={Dialog=3..12}] Dialog 13
scoreboard players add @s[scores={Dialog=3..11}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,dx=0,dy=3,dz=0] run scoreboard players set @s[scores={Dialog=2}] Dialog 3
tag @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] add collision
execute if entity @e[tag=wool,tag=vacuumable,limit=1] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..2},tag=!visible] run function luigis_mansion:entities/nana/turn_visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/nana/turn_invisible
execute if entity @s[scores={Dialog=2}] if entity @e[tag=wool,tag=can_spit,limit=1] run function luigis_mansion:entities/nana/tick/normal/move
scoreboard players set @s[scores={Dialog=3}] AnimationProg 0
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=12}] if entity @e[tag=wool,tag=can_spit,limit=1] unless entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/tick/normal/move
execute if entity @s[scores={Dialog=12}] if entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/try_attack
scoreboard players set @s[scores={Dialog=13}] AnimationProg 0
execute if entity @s[scores={Dialog=13}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=22}] if entity @e[tag=wool,tag=can_spit,limit=1] unless entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/tick/normal/move
execute if entity @s[scores={Dialog=22}] if entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/try_attack
scoreboard players set @s[scores={Dialog=23}] AnimationProg 0
execute if entity @s[scores={Dialog=24},tag=!visible,tag=!vanish] run function luigis_mansion:entities/nana/turn_visible
scoreboard players set @s[scores={Dialog=24},tag=!vanish] VulnerableTime 2147483647
execute if entity @s[scores={Dialog=24,Sound=0},tag=!vanish] run playsound luigis_mansion:entity.nana.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=24,Sound=0},tag=!vanish] run scoreboard players set @s Sound 40
execute positioned ~-0.5 ~-1.1875 ~-0.5 run tag @e[type=minecraft:armor_stand,tag=wool,tag=spit,dx=0,dy=3,dz=0] add dead

execute store result score @s Wave if entity @e[tag=wool]
execute if entity @s[scores={Dialog=..2,Wave=2}] run scoreboard players set @s Dialog 25
execute if entity @s[scores={Dialog=..12,Wave=1}] run scoreboard players set @s Dialog 25
execute if entity @s[scores={Dialog=..22,Wave=0}] run scoreboard players set @s Dialog 25
scoreboard players set @s[scores={Dialog=25}] AnimationProg 0
execute if entity @s[scores={Dialog=25}] run scoreboard players set #nanas_room Wave -1
execute if entity @s[scores={Dialog=25}] run playsound luigis_mansion:entity.nana.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=25}] run tag @e[tag=wool] add dead
execute if entity @s[scores={Dialog=55}] run function luigis_mansion:entities/nana/turn_invisible
tag @s[scores={Dialog=65}] add remove_from_existence

execute if entity @s[scores={Dialog=3..11}] run function luigis_mansion:animations/nana/scream
execute if entity @s[scores={Dialog=13..21}] run function luigis_mansion:animations/nana/scream
execute if entity @s[scores={Dialog=23..24},tag=!vanish] run function luigis_mansion:animations/nana/complain
execute if entity @s[scores={Dialog=25..}] run function luigis_mansion:animations/nana/laugh
execute unless entity @s[scores={Dialog=3..11}] unless entity @s[scores={Dialog=13..21}] unless entity @s[scores={Dialog=23..}] run function luigis_mansion:animations/nana/idle