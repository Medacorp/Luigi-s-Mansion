summon minecraft:marker 704 120 -36 {Tags:["choice"]}
summon minecraft:marker 715 120 -36 {Tags:["choice"]}
summon minecraft:marker 701 120 -33 {Tags:["choice"]}
summon minecraft:marker 700 120 -29 {Tags:["choice"]}
summon minecraft:marker 700 120 -25 {Tags:["choice"]}
summon minecraft:marker 699 122 -26 {Tags:["choice"]}
summon minecraft:marker 700 121 -32 {Tags:["choice"]}
summon minecraft:marker 711 120 -34 {Tags:["choice"]}
summon minecraft:marker 707 120 -32 {Tags:["choice"]}
summon minecraft:marker 713 120 -29 {Tags:["choice"]}
summon minecraft:marker 710 120 -26 {Tags:["choice"]}
summon minecraft:marker 707 120 -23 {Tags:["choice"]}
summon minecraft:marker 703 120 -22 {Tags:["choice"]}
summon minecraft:marker 716 120 -19 {Tags:["choice"]}
summon minecraft:marker 706 120 -18 {Tags:["choice"]}
summon minecraft:marker 702 120 -18 {Tags:["choice"]}
summon minecraft:marker 702 120 -37 {Tags:["choice"]}
summon minecraft:marker 704 120 -37 {Tags:["choice"]}
summon minecraft:marker 706 120 -37 {Tags:["choice"]}
summon minecraft:marker 708 120 -37 {Tags:["choice"]}
summon minecraft:marker 712 120 -37 {Tags:["choice"]}
summon minecraft:marker 715 120 -37 {Tags:["choice"]}
summon minecraft:marker 700 120 -36 {Tags:["choice"]}
summon minecraft:marker 710 120 -36 {Tags:["choice"]}
summon minecraft:marker 707 120 -35 {Tags:["choice"]}
summon minecraft:marker 700 120 -22 {Tags:["choice"]}
summon minecraft:marker 702 120 -22 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]