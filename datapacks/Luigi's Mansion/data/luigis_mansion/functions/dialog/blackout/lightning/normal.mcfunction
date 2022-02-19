scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=1..170}] run scoreboard players set @a[scores={ScareType=4}] ScareTime 21
execute if entity @s[scores={Dialog=1}] run summon minecraft:lightning_bolt 691 100 81
execute if entity @s[scores={Dialog=30}] run summon minecraft:lightning_bolt 691 100 -66
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 687 151 8.0
execute if entity @s[scores={Dialog=70..}] run function luigis_mansion:dialog/blackout/lightning/particles_normal
execute if entity @s[scores={Dialog=130}] as @e[type=!minecraft:player,limit=1] run function luigis_mansion:dialog/blackout/lightning/reset_normal
execute if entity @s[scores={Dialog=130}] run data modify storage luigis_mansion:data current_state.current_data.blackout set value 1b
execute if entity @s[scores={Dialog=190}] run scoreboard players set @a GBHCall 11
tag @s[scores={Dialog=190}] remove blackout_lightning
scoreboard players set @s[scores={Dialog=190}] Dialog 0