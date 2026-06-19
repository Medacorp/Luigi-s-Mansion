execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^0.25 ^1.35 ^
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^-0.25 ^1.45 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^0.5 ^1.35 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^-0.5 ^1.45 ^

$execute at @s run function $(namespace):animations/chauncey/$(id)/left_arm