kill @e[type=minecraft:lightning_bolt]
summon minecraft:marker ~ ~ ~ {Tags:["lightning","dead"]}
execute as @e[tag=lightning,type=minecraft:marker] run function luigis_mansion:other/lightning_strike_marker