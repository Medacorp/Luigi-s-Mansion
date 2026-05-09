execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/memory/get with entity @a[tag=searcher,limit=1]
execute unless entity @s as @a run function luigis_mansion:main/get_same_room
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:furniture.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=..7},limit=1] run playsound luigis_mansion:furniture.search.generic block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=8..},limit=1] run playsound luigis_mansion:furniture.search.generic block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/hump"} run playsound luigis_mansion:furniture.search.generic block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/bash"} run playsound luigis_mansion:furniture.search.generic block @a[tag=same_room] ~ ~ ~ 1 0.9
execute unless entity @s run tag @a[tag=same_room] remove same_room
execute unless entity @s run tag @a[tag=exact_same_room] remove exact_same_room
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory
#3DS gallery generator, and stacked books
#3DS gallery back room chair, stacked books, and table
#armory shield
#balcony 1 plants
#balcony 2 plants
#ball room chairs
#billiards room chairs, chess table, and darting board
#boneyard bowl and sign
#cellar boxes
#ceramics studio boxes, chair, table
#conservatory chairs, and lecterns
#dining room chairs, and dishes
#guest room chair
#hallway 7 lamp
#laundry room basket, broom, cabinet and shelf
#master bedroom chair
#nana's room chair, loom, shelf, and table
#nursery chairs, tables, and toys
#parlor chair, couch, table
#rec room bikes
#safari room chair, shelves, and table
#sitting room coat rack
#storage room chairs
#study books, chair, and hat rack
#tea room chairs, and tea box
#telephone room closets, and shelves
#the artist's studio chairs
#the twins' room chairs, darting board, table and toys
#wardrobe room closets, hat rack, mirror and shoe stand