scoreboard players add @s[scores={Dialog=22..}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=billiards_ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=21}] Dialog 1
scoreboard players add @s[scores={Dialog=12..20}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=billiards_ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=11}] Dialog 1
scoreboard players add @s[scores={Dialog=2..10}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=billiards_ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
tag @e[type=minecraft:armor_stand,tag=billiards_ball,tag=spit,distance=..0.7] add collision
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] at @a[tag=same_room] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
execute if entity @s[scores={Dialog=11}] at @a[tag=same_room] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
execute if entity @s[scores={Dialog=21}] at @a[tag=same_room] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
effect clear @s[nbt={ActiveEffects:[{Id:14b,Duration:19}]}] minecraft:invisibility
execute if entity @s[scores={Dialog=1}] run function #luigis_mansion:entities/slim_bankshot/pool_path
execute if entity @s[scores={Dialog=2}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=11}] run function #luigis_mansion:entities/slim_bankshot/pool_path
execute if entity @s[scores={Dialog=12}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=21}] run function #luigis_mansion:entities/slim_bankshot/pool_path
execute if entity @s[scores={Dialog=22}] run playsound luigis_mansion:entity.slim_bankshot.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=30}] VulnerableTime 80
scoreboard players set @s[scores={Dialog=100}] Dialog 21
execute if entity @s[scores={Dialog=30,Sound=0}] run playsound luigis_mansion:entity.slim_bankshot.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30,Sound=0}] run scoreboard players set @s Sound 10