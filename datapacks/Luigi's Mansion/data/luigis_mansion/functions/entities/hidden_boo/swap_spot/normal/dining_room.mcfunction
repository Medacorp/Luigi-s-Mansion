summon minecraft:marker 709 11 34 {Tags:["choice"]}
summon minecraft:marker 709 11 52 {Tags:["choice"]}
summon minecraft:marker 709 11 56 {Tags:["choice"]}
summon minecraft:marker 709 11 30 {Tags:["choice"]}
summon minecraft:marker 702 11 49 {Tags:["choice"]}
summon minecraft:marker 702 11 43 {Tags:["choice"]}
summon minecraft:marker 702 11 37 {Tags:["choice"]}
summon minecraft:marker 709 14 52 {Tags:["choice"]}
summon minecraft:marker 709 14 43 {Tags:["choice"]}
summon minecraft:marker 709 14 43 {Tags:["choice"]}
summon minecraft:marker 709 14 34 {Tags:["choice"]}
summon minecraft:marker 705 11 33 {Tags:["choice"]}
summon minecraft:marker 704 12 35 {Tags:["choice"]}
summon minecraft:marker 704 12 37 {Tags:["choice"]}
summon minecraft:marker 703 12 41 {Tags:["choice"]}
summon minecraft:marker 704 12 45 {Tags:["choice"]}
summon minecraft:marker 704 12 48 {Tags:["choice"]}
summon minecraft:marker 706 11 49 {Tags:["choice"]}
summon minecraft:marker 704 12 51 {Tags:["choice"]}
summon minecraft:marker 704 12 46 {Tags:["choice"]}
summon minecraft:marker 704 12 40 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]