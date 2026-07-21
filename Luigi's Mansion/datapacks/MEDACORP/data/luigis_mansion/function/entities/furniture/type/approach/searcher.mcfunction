function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~ ~-180 0"}
execute unless data entity @s data.animation if predicate luigis_mansion:luigi/search/knock_chance run function luigis_mansion:entities/luigi/animation/set/search/knock
execute unless data entity @s data.animation if predicate luigis_mansion:luigi/search/hump_chance run function luigis_mansion:entities/luigi/animation/set/search/hump
execute unless data entity @s data.animation run function luigis_mansion:entities/luigi/animation/set/search/bash