execute positioned ~ ~-1.1875 ~ if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=22}] Dialog 1
scoreboard players add @s[scores={Dialog=13..21}] Dialog 1
execute positioned ~ ~-1.1875 ~ if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=12}] Dialog 1
scoreboard players add @s[scores={Dialog=3..11}] Dialog 1
execute positioned ~ ~-1.1875 ~ if entity @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=2}] Dialog 1
tag @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] add collision
execute if entity @e[tag=wool,tag=vacuumable,limit=1] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
effect clear @s[nbt={ActiveEffects:[{Id:14b,Duration:19}]}] minecraft:invisibility
execute if entity @s[scores={Dialog=2}] if entity @e[tag=wool,tag=can_spit,limit=1] run function luigis_mansion:entities/nana/tick/normal/move
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=12}] if entity @e[tag=wool,tag=can_spit,limit=1] unless entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/tick/normal/move
execute if entity @s[scores={Dialog=12}] if entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] unless entity @e[tag=shot_needle,limit=1] run function luigis_mansion:entities/nana/attack
execute if entity @s[scores={Dialog=13}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=22}] if entity @e[tag=wool,tag=can_spit,limit=1] unless entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/tick/normal/move
execute if entity @s[scores={Dialog=22}] if entity @e[tag=wool,tag=can_spit,limit=1,distance=..6] unless entity @e[tag=shot_needle,limit=1] run function luigis_mansion:entities/nana/attack
scoreboard players set @s[scores={Dialog=23}] VulnerableTime 2147483647
execute if entity @s[scores={Dialog=23,Sound=0}] run playsound luigis_mansion:entity.nana.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=23,Sound=0}] run scoreboard players set @s Sound 40
execute positioned ~ ~-1.1875 ~ run tag @e[type=minecraft:armor_stand,tag=wool,tag=spit,distance=..0.7] add dead

execute store result score @s Wave if entity @e[tag=wool]
execute if entity @s[scores={Dialog=2,Wave=2}] run tag @s add leave
execute if entity @s[scores={Dialog=12,Wave=1}] run tag @s add leave
execute if entity @s[scores={Dialog=22,Wave=0}] run tag @s add leave
execute if entity @s[tag=leave] run scoreboard players set #nanas_room Wave -1
execute if entity @s[tag=leave] run playsound luigis_mansion:entity.nana.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=leave] run tag @e[tag=wool] add dead
tag @s[tag=leave] add remove_from_existence