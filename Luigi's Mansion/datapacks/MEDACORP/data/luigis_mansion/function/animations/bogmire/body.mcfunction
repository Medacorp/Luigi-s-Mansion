execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^ ^0.95 ^
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^ ^0.85 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^ ^1.45 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^ ^1.75 ^

$execute at @s run function $(namespace):animations/bogmire/$(id)/body