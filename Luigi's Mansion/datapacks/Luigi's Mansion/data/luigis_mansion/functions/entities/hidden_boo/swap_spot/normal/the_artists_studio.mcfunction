summon minecraft:marker 702 29 -57 {Tags:["choice"]}
summon minecraft:marker 695 29 -58 {Tags:["choice"]}
summon minecraft:marker 694 29 -60 {Tags:["choice"]}
summon minecraft:marker 689 29 -63 {Tags:["choice"]}
summon minecraft:marker 693 29 -62 {Tags:["choice"]}
summon minecraft:marker 692 29 -65 {Tags:["choice"]}
summon minecraft:marker 692 29 -68 {Tags:["choice"]}
summon minecraft:marker 693 29 -70 {Tags:["choice"]}
summon minecraft:marker 694 29 -72 {Tags:["choice"]}
summon minecraft:marker 701 29 -75 {Tags:["choice"]}
summon minecraft:marker 691 30 -65 {Tags:["choice"]}
summon minecraft:marker 691 30 -72 {Tags:["choice"]}
summon minecraft:marker 695 30 -75 {Tags:["choice"]}
summon minecraft:marker 699 29 -75 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]