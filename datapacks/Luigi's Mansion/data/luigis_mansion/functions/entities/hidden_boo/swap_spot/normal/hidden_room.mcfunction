summon minecraft:marker 744 11 46 {Tags:["choice"]}
summon minecraft:marker 738 13 45 {Tags:["choice"]}
summon minecraft:marker 746 11 43 {Tags:["choice"]}
summon minecraft:marker 739 11 40 {Tags:["choice"]}
summon minecraft:marker 746 11 37 {Tags:["choice"]}
summon minecraft:marker 738 13 35 {Tags:["choice"]}
summon minecraft:marker 744 11 33 {Tags:["choice"]}
summon minecraft:marker 746 13 47 {Tags:["choice"]}
summon minecraft:marker 746 13 32 {Tags:["choice"]}
summon minecraft:marker 739 13 47 {Tags:["choice"]}
summon minecraft:marker 739 13 32 {Tags:["choice"]}
summon minecraft:marker 743 14 48 {Tags:["choice"]}
summon minecraft:marker 738 14 42 {Tags:["choice"]}
summon minecraft:marker 738 14 40 {Tags:["choice"]}
summon minecraft:marker 738 14 37 {Tags:["choice"]}
summon minecraft:marker 743 14 31 {Tags:["choice"]}
summon minecraft:marker 749 12 40 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]