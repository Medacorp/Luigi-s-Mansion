summon minecraft:marker 699 11 -19 {Tags:["choice"]}
summon minecraft:marker 699 11 -37 {Tags:["choice"]}
summon minecraft:marker 699 11 -41 {Tags:["choice"]}
summon minecraft:marker 699 11 -15 {Tags:["choice"]}
summon minecraft:marker 702 11 -34 {Tags:["choice"]}
summon minecraft:marker 702 11 -28 {Tags:["choice"]}
summon minecraft:marker 702 11 -22 {Tags:["choice"]}
summon minecraft:marker 709 14 -37 {Tags:["choice"]}
summon minecraft:marker 699 14 -28 {Tags:["choice"]}
summon minecraft:marker 709 14 -28 {Tags:["choice"]}
summon minecraft:marker 709 14 -19 {Tags:["choice"]}
summon minecraft:marker 705 11 -18 {Tags:["choice"]}
summon minecraft:marker 704 12 -20 {Tags:["choice"]}
summon minecraft:marker 704 12 -22 {Tags:["choice"]}
summon minecraft:marker 703 12 -26 {Tags:["choice"]}
summon minecraft:marker 704 12 -30 {Tags:["choice"]}
summon minecraft:marker 704 12 -33 {Tags:["choice"]}
summon minecraft:marker 706 11 -34 {Tags:["choice"]}
summon minecraft:marker 704 12 -36 {Tags:["choice"]}
summon minecraft:marker 704 12 -31 {Tags:["choice"]}
summon minecraft:marker 704 12 -25 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]