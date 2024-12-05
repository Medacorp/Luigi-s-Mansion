scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..99}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if entity @s[scores={Dialog=2}] as @a[tag=same_room] run function luigis_mansion:other/music/set/bogmire_battle
execute if entity @s[scores={Dialog=60}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=80}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=90}] run summon minecraft:lightning_bolt 651 103 47
tag @s[scores={Dialog=80}] add appear
execute if entity @s[scores={Dialog=100}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[scores={Dialog=100}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if entity @s[scores={Dialog=240}] as @a run function 3ds_remake:room/hidden/bogmire_battle/warp_to
execute if entity @s[scores={Dialog=240}] as @e[tag=luigi,tag=same_room] at @s run function luigis_mansion:entities/luigi/animation/scare/bash_force_move
execute if entity @s[scores={Dialog=100..240}] run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if entity @s[scores={Dialog=240}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
tag @s[scores={Dialog=240}] add remove_from_existence

execute if entity @s[scores={Sound=0},tag=visible] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=visible] Sound 30