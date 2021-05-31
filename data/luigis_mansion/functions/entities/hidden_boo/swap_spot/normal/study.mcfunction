summon minecraft:marker 707 22 61 {Tags:["choice"]}
summon minecraft:marker 711 22 61 {Tags:["choice"]}
summon minecraft:marker 715 22 53 {Tags:["choice"]}
summon minecraft:marker 709 22 44 {Tags:["choice"]}
summon minecraft:marker 712 22 44 {Tags:["choice"]}
summon minecraft:marker 715 20 45 {Tags:["choice"]}
summon minecraft:marker 715 20 61 {Tags:["choice"]}
summon minecraft:marker 706 20 48 {Tags:["choice"]}
summon minecraft:marker 708 20 49 {Tags:["choice"]}
summon minecraft:marker 709 20 57 {Tags:["choice"]}
summon minecraft:marker 702 24 54 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]