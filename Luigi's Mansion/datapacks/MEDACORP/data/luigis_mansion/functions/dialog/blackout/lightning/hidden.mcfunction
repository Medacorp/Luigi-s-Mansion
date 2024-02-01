scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if entity @s[scores={Dialog=1..170}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] IdleTime -22
execute if entity @s[scores={Dialog=1}] run summon minecraft:lightning_bolt 691 100 -66
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[x=691.5,y=100,z=-65.5,distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
execute if entity @s[scores={Dialog=30}] run summon minecraft:lightning_bolt 691 100 81
execute if entity @s[scores={Dialog=30}] run scoreboard players set @a[x=691.5,y=100,z=81.5,distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 687 151 8.0
execute if entity @s[scores={Dialog=70}] run scoreboard players set @a[x=691.5,y=151,z=8.0,distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
execute if entity @s[scores={Dialog=70..90}] run function luigis_mansion:dialog/blackout/lightning/particles_hidden
execute if entity @s[scores={Dialog=110..130}] run function luigis_mansion:dialog/blackout/lightning/particles_hidden
execute if entity @s[scores={Dialog=150..180}] run function luigis_mansion:dialog/blackout/lightning/particles_hidden
execute if entity @s[scores={Dialog=70}] run function luigis_mansion:dialog/blackout/lightning/sound_hidden
execute if entity @s[scores={Dialog=110}] run function luigis_mansion:dialog/blackout/lightning/sound_hidden
execute if entity @s[scores={Dialog=150}] run function luigis_mansion:dialog/blackout/lightning/sound_hidden
execute if entity @s[scores={Dialog=160}] run function luigis_mansion:dialog/blackout/lightning/sound_hidden
execute if entity @s[scores={Dialog=130}] as @e[type=!minecraft:player,limit=1] run function luigis_mansion:dialog/blackout/lightning/reset_hidden
execute if entity @s[scores={Dialog=130}] run data modify storage luigis_mansion:data current_state.current_data.blackout set value 1b
execute if entity @s[scores={Dialog=130..}] run scoreboard players set @e[tag=ghost,tag=hidden,tag=can_spawn] SpawnTime 102
execute if entity @s[scores={Dialog=130..}] run tag @e[tag=ghost,tag=hidden,tag=can_spawn] remove can_spawn
execute if entity @s[scores={Dialog=190}] run scoreboard players set @a GBHCall 11
tag @s[scores={Dialog=190}] remove blackout_lightning
scoreboard players set @s[scores={Dialog=190}] Dialog 0