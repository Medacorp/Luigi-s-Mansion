summon minecraft:marker 744 11 -31 {Tags:["choice"]}
summon minecraft:marker 738 13 -30 {Tags:["choice"]}
summon minecraft:marker 746 11 -28 {Tags:["choice"]}
summon minecraft:marker 739 11 -25 {Tags:["choice"]}
summon minecraft:marker 746 11 -22 {Tags:["choice"]}
summon minecraft:marker 738 13 -20 {Tags:["choice"]}
summon minecraft:marker 744 11 -18 {Tags:["choice"]}
summon minecraft:marker 746 13 -32 {Tags:["choice"]}
summon minecraft:marker 746 13 -17 {Tags:["choice"]}
summon minecraft:marker 739 13 -32 {Tags:["choice"]}
summon minecraft:marker 739 13 -17 {Tags:["choice"]}
summon minecraft:marker 743 14 -33 {Tags:["choice"]}
summon minecraft:marker 738 14 -27 {Tags:["choice"]}
summon minecraft:marker 738 14 -25 {Tags:["choice"]}
summon minecraft:marker 738 14 -22 {Tags:["choice"]}
summon minecraft:marker 743 14 -16 {Tags:["choice"]}
summon minecraft:marker 749 12 -25 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]