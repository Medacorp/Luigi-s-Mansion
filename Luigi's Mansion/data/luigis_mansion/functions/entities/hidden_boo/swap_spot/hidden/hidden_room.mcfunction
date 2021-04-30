summon minecraft:marker 713 102 -19 {Tags:["choice"]}
summon minecraft:marker 707 104 -18 {Tags:["choice"]}
summon minecraft:marker 715 102 -17 {Tags:["choice"]}
summon minecraft:marker 708 102 -13 {Tags:["choice"]}
summon minecraft:marker 715 102 -10 {Tags:["choice"]}
summon minecraft:marker 707 104 -8 {Tags:["choice"]}
summon minecraft:marker 713 102 -6 {Tags:["choice"]}
summon minecraft:marker 715 104 -20 {Tags:["choice"]}
summon minecraft:marker 715 104 -5 {Tags:["choice"]}
summon minecraft:marker 708 104 -20 {Tags:["choice"]}
summon minecraft:marker 708 104 -5 {Tags:["choice"]}
summon minecraft:marker 712 105 -21 {Tags:["choice"]}
summon minecraft:marker 707 105 -15 {Tags:["choice"]}
summon minecraft:marker 707 105 -13 {Tags:["choice"]}
summon minecraft:marker 707 105 -10 {Tags:["choice"]}
summon minecraft:marker 712 105 -4 {Tags:["choice"]}
summon minecraft:marker 718 103 -13 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]