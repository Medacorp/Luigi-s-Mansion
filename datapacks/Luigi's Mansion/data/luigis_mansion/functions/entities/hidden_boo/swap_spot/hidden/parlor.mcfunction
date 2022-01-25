summon minecraft:marker 717 21 -21 {Tags:["choice"]}
summon minecraft:marker 724 21 -21 {Tags:["choice"]}
summon minecraft:marker 727 22 -18 {Tags:["choice"]}
summon minecraft:marker 714 21 -13 {Tags:["choice"]}
summon minecraft:marker 717 21 -4 {Tags:["choice"]}
summon minecraft:marker 724 21 -4 {Tags:["choice"]}
summon minecraft:marker 727 22 -7 {Tags:["choice"]}
summon minecraft:marker 721 20 -8 {Tags:["choice"]}
summon minecraft:marker 719 20 -17 {Tags:["choice"]}
summon minecraft:marker 721 20 -17 {Tags:["choice"]}
summon minecraft:marker 714 20 -12 {Tags:["choice"]}
summon minecraft:marker 714 22 -14 {Tags:["choice"]}
summon minecraft:marker 714 22 -11 {Tags:["choice"]}
summon minecraft:marker 714 20 -19 {Tags:["choice"]}
summon minecraft:marker 721 20 -4 {Tags:["choice"]}
summon minecraft:marker 727 21 -4 {Tags:["choice"]}
summon minecraft:marker 720 21 -8 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]