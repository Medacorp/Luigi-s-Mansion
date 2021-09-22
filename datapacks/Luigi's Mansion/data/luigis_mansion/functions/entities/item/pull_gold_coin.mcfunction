execute positioned ~ ~1.6 ~ if block ^ ^ ^0.1 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.1 ~ ~
execute positioned ~ ~1.6 ~ unless block ^ ^ ^0.1 #luigis_mansion:item_pull_ignore rotated ~ 0 if block ^ ^ ^0.1 #luigis_mansion:item_pull_ignore positioned as @s run teleport @s ^ ^ ^0.1 ~ ~
tag @s remove bounce