scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..99}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=2}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/bogmire_battle
execute if entity @s[scores={Dialog=60..90}] run scoreboard players set @a[x=651.5,y=103,z=47.5,distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
execute if entity @s[scores={Dialog=60}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=80}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=90}] run summon minecraft:lightning_bolt 651 103 47
scoreboard players set @s[scores={Dialog=80}] AnimationProgress 0
tag @s[scores={Dialog=80}] add appear
execute if entity @s[scores={Dialog=100}] as @a[tag=same_room] run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=100..240}] run scoreboard players set @a[tag=same_room,scores={ScareTime=20}] ScareTime 21
execute if entity @s[scores={Dialog=240}] as @a run function luigis_mansion:room/normal/bogmire_battle/warp_to
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room] at @s run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=240}] run scoreboard players set @a[tag=same_room,scores={ScareTime=21}] ScareTime 22
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=240}] add dead