execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^-1 ^ ^"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^1 ^ ^"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^ ^ ^-1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^ ^ ^1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^-1 ^ ^-1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^1 ^ ^-1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^-1 ^ ^1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/collide_check {position:"^1 ^ ^1"}
execute if entity @s[tag=!valid_location] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~"}
execute if entity @s[tag=valid_location] run function luigis_mansion:main/update_last_position
tag @s remove valid_location
tag @s remove undesired_location
tag @s add moved_out_of_the_way