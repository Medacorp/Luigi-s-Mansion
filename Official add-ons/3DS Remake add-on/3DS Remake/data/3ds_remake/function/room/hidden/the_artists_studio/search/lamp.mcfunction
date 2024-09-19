execute unless score #the_artists_studio_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:71,tags:["drop_loot"]}
execute unless score #the_artists_studio_lamp Searched matches 1 as @a if score #the_artists_studio_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #the_artists_studio_lamp Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #the_artists_studio_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 696 34 -65 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 696 33 -65 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_artists_studio_lamp Searched 1
data remove storage luigis_mansion:data furniture