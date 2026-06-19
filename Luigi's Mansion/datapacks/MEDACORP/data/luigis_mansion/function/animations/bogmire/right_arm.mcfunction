execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^-0.3 ^0.85 ^
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^0.3 ^0.95 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^-0.4 ^1.35 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^0.4 ^1.85 ^

$execute at @s run function $(namespace):animations/bogmire/$(id)/right_arm