scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..99}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=2}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/bogmire_battle
execute if entity @s[scores={Dialog=60..90}] run scoreboard players set @a[x=651.5,y=103,z=47.5,distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
execute if entity @s[scores={Dialog=60}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=80}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=90}] run summon minecraft:lightning_bolt 651 103 47
tag @s[scores={Dialog=80}] add appear
execute if entity @s[scores={Dialog=100}] as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if entity @s[scores={Dialog=100..240}] run scoreboard players set @a[tag=same_room,scores={IdleTime=-21}] IdleTime -22
execute if entity @s[scores={Dialog=240}] as @a run function 3ds_remake:room/hidden/bogmire_battle/warp_to
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room] at @s run function luigis_mansion:entities/player/animation/scare/bash_force_move
execute if entity @s[scores={Dialog=240}] run scoreboard players set @a[tag=same_room,scores={IdleTime=-22}] IdleTime -23
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=240}] add remove_from_existence

execute if entity @s[scores={Sound=0},tag=visible] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=visible] Sound 30