execute if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore if block ^ ^ ^0.3 #minecraft:slabs[type=bottom] positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore unless block ^ ^ ^0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^0.5 ^0.3 ~ ~
execute at @s positioned ~ ~0.6 ~ if entity @e[tag=vacuuming_me,distance=..1.2,limit=1] run tag @s add captured
tag @s add was_in_vacuum