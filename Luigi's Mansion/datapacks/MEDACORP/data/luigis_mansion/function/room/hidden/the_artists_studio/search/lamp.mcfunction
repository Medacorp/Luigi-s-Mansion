execute unless score #the_artists_studio_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:71,tags:["drop_loot"]}
execute unless score #the_artists_studio_lamp Searched matches 1 as @e[tag=luigi] if score #the_artists_studio_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #the_artists_studio_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p20
execute unless score #the_artists_studio_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 696 34 80 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 696 33 80 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_artists_studio_lamp Searched 1
data remove storage luigis_mansion:data furniture