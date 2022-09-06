summon minecraft:marker 707 30 -46 {Tags:["choice"]}
summon minecraft:marker 698 29 -52 {Tags:["choice"]}
summon minecraft:marker 698 30 -50 {Tags:["choice"]}
summon minecraft:marker 710 29 -63 {Tags:["choice"]}
summon minecraft:marker 710 29 -61 {Tags:["choice"]}
summon minecraft:marker 710 29 -59 {Tags:["choice"]}
summon minecraft:marker 709 29 -60 {Tags:["choice"]}
summon minecraft:marker 698 29 -62 {Tags:["choice"]}
summon minecraft:marker 700 29 -62 {Tags:["choice"]}
summon minecraft:marker 704 29 -62 {Tags:["choice"]}
summon minecraft:marker 706 29 -62 {Tags:["choice"]}
summon minecraft:marker 702 29 -60 {Tags:["choice"]}
summon minecraft:marker 702 31 -60 {Tags:["choice"]}
summon minecraft:marker 704 29 -60 {Tags:["choice"]}
summon minecraft:marker 706 29 -60 {Tags:["choice"]}
summon minecraft:marker 698 29 -59 {Tags:["choice"]}
summon minecraft:marker 700 29 -59 {Tags:["choice"]}
summon minecraft:marker 699 31 -58 {Tags:["choice"]}
summon minecraft:marker 698 29 -57 {Tags:["choice"]}
summon minecraft:marker 700 29 -57 {Tags:["choice"]}
summon minecraft:marker 703 29 -58 {Tags:["choice"]}
summon minecraft:marker 709 29 -58 {Tags:["choice"]}
summon minecraft:marker 701 29 -55 {Tags:["choice"]}
summon minecraft:marker 710 29 -55 {Tags:["choice"]}
summon minecraft:marker 701 29 -52 {Tags:["choice"]}
summon minecraft:marker 711 29 -52 {Tags:["choice"]}
summon minecraft:marker 701 29 -49 {Tags:["choice"]}
summon minecraft:marker 711 29 -49 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]