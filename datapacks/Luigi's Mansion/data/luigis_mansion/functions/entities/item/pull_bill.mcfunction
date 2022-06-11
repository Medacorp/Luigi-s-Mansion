execute positioned ~ ~1.5 ~ if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore if block ^ ^ ^0.3 #minecraft:slabs[type=bottom] positioned as @s run teleport @s ^ ^ ^0.3 ~ ~
execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore unless block ^ ^ ^0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.3 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^0.5 ^0.3 ~ ~
tag @s add item_is_pulled
tag @s remove bounce