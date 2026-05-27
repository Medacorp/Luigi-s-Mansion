tag @s add maskless
tag @s add stunable
$function $(namespace):entities/$(id)/reset
tag @s add complain
data modify entity @s data.loot set from entity @s data.loot_storage.mask
execute if data entity @s data.loot run data modify entity @s data.loot.owner set from entity @s UUID
execute if data entity @s data.loot positioned ~ ~1.3 ~ positioned ^ ^ ^0.4 run function luigis_mansion:other/drop_loot