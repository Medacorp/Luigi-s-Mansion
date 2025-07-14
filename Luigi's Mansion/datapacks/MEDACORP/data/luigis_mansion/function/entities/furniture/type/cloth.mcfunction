execute if entity @s[tag=!blocked_furniture_boo_search] run function luigis_mansion:entities/furniture/type/cloth/block_furniture
data modify entity @s data.puller set value 0
execute if entity @s[scores={SearcherID=-2147483648..}] store result entity @s data.puller int 1 run scoreboard players get @s SearcherID
execute if entity @s[tag=in_vacuum] run function luigis_mansion:entities/furniture/type/cloth/vacuum with entity @s data

execute if entity @s[tag=!in_vacuum,tag=transformed] run function luigis_mansion:entities/furniture/type/cloth/reset
tag @s[tag=!in_vacuum,tag=!transformed] add idle_furniture