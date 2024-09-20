execute unless score #the_artists_studio_bricks Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:50,tags:["drop_loot"]}
execute unless score #the_artists_studio_bricks Searched matches 1 as @a if score #the_artists_studio_bricks SearcherID = @s ID run tag @s add searcher
execute unless score #the_artists_studio_bricks Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p20
execute unless score #the_artists_studio_bricks Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 699.0 29.5 91.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 699.0 30 91.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_artists_studio_bricks Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=699.5,y=29,z=90.5,distance=..0.7,tag=ghost,tag=hidden] add spawn