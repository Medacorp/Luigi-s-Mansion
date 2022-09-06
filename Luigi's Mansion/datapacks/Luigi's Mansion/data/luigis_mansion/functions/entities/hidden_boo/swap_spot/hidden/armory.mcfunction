summon minecraft:marker 750 29 -59 {Tags:["choice"]}
summon minecraft:marker 761 29 -59 {Tags:["choice"]}
summon minecraft:marker 747 29 -56 {Tags:["choice"]}
summon minecraft:marker 746 29 -52 {Tags:["choice"]}
summon minecraft:marker 746 29 -48 {Tags:["choice"]}
summon minecraft:marker 745 31 -49 {Tags:["choice"]}
summon minecraft:marker 746 30 -55 {Tags:["choice"]}
summon minecraft:marker 757 29 -57 {Tags:["choice"]}
summon minecraft:marker 753 29 -55 {Tags:["choice"]}
summon minecraft:marker 759 29 -52 {Tags:["choice"]}
summon minecraft:marker 756 29 -49 {Tags:["choice"]}
summon minecraft:marker 753 29 -46 {Tags:["choice"]}
summon minecraft:marker 749 29 -45 {Tags:["choice"]}
summon minecraft:marker 762 29 -42 {Tags:["choice"]}
summon minecraft:marker 752 29 -41 {Tags:["choice"]}
summon minecraft:marker 748 29 -41 {Tags:["choice"]}
summon minecraft:marker 748 29 -60 {Tags:["choice"]}
summon minecraft:marker 750 29 -60 {Tags:["choice"]}
summon minecraft:marker 752 29 -60 {Tags:["choice"]}
summon minecraft:marker 754 29 -60 {Tags:["choice"]}
summon minecraft:marker 758 29 -60 {Tags:["choice"]}
summon minecraft:marker 761 29 -60 {Tags:["choice"]}
summon minecraft:marker 746 29 -59 {Tags:["choice"]}
summon minecraft:marker 756 29 -59 {Tags:["choice"]}
summon minecraft:marker 753 29 -58 {Tags:["choice"]}
summon minecraft:marker 746 29 -45 {Tags:["choice"]}
summon minecraft:marker 748 29 -45 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]