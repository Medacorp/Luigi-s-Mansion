scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:lightning_bolt 691 100 -66
execute if entity @s[scores={Dialog=30}] run summon minecraft:lightning_bolt 691 100 81
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 687 151 8.0
execute if entity @s[scores={Dialog=70..}] run function luigis_mansion:dialog/blackout/lightning/particles_hidden
execute if entity @s[scores={Dialog=130}] as @e[type=!minecraft:player,limit=1] run function luigis_mansion:dialog/blackout/lightning/reset_hidden
execute if entity @s[scores={Dialog=130}] run tag @a add blackout
execute if entity @s[scores={Dialog=190}] run scoreboard players set @a GBHCall 11
tag @s[scores={Dialog=190}] remove blackout_lightning
scoreboard players reset @s[scores={Dialog=190}] Dialog