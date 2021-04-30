summon minecraft:marker ~ ~ ~ {Tags:["lightning"]}
spreadplayers ~ ~ 1 200 false @e[tag=lightning,type=minecraft:marker,limit=1]
execute at @e[tag=lightning,type=minecraft:marker,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
kill @e[tag=lightning,type=minecraft:marker,limit=1]