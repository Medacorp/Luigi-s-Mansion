scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run summon minecraft:lightning_bolt 691 100 -66
execute if entity @s[scores={Time=30}] run summon minecraft:lightning_bolt 691 100 81
execute if entity @s[scores={Time=70}] run summon minecraft:lightning_bolt 687 151 8.0
execute if entity @s[scores={Time=70..}] run function luigis_mansion:dialog/blackout/lightning/particles_hidden
execute if entity @s[scores={Time=130}] as @e[type=!minecraft:player,limit=1] run function luigis_mansion:dialog/blackout/lightning/reset_hidden
execute if entity @s[scores={Time=130}] run tag @a add blackout
execute if entity @s[scores={Time=190}] run scoreboard players set @a GBHCall 11
tag @s[scores={Time=190}] remove blackout_lightning
scoreboard players reset @s[scores={Time=190}] Time