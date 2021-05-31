summon minecraft:marker 707 22 -46 {Tags:["choice"]}
summon minecraft:marker 711 22 -46 {Tags:["choice"]}
summon minecraft:marker 715 22 -38 {Tags:["choice"]}
summon minecraft:marker 709 22 -29 {Tags:["choice"]}
summon minecraft:marker 712 22 -29 {Tags:["choice"]}
summon minecraft:marker 715 20 -30 {Tags:["choice"]}
summon minecraft:marker 715 20 -46 {Tags:["choice"]}
summon minecraft:marker 706 20 -33 {Tags:["choice"]}
summon minecraft:marker 708 20 -34 {Tags:["choice"]}
summon minecraft:marker 709 20 -42 {Tags:["choice"]}
summon minecraft:marker 702 24 -39 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]