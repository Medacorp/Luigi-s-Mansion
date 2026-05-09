execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/memory/get with entity @a[tag=searcher,limit=1]
execute unless entity @s as @a run function luigis_mansion:main/get_same_room
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=..7},limit=1] run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=8..},limit=1] run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/hump"} run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/bash"} run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1 0.9
execute unless entity @s run tag @a[tag=same_room] remove same_room
execute unless entity @s run tag @a[tag=exact_same_room] remove exact_same_room
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory
#anteroom lamps
#armory crates, and mirror
#astral hall lamp, and tables
#ball room lamps
#bathroom 2 lamp
#billiards room billiards table
#boneyard dog house
#breaker room mirror and table
#butler's room closet, ironing table, lamp, sewing machine, and table
#ceramics studio crates
#clockwork room chairs, lamps, puppets, small doors, and tables
#cold storage crates
#conservatory closet, lamp, and piano
#courtyard lamps
#dining room closets, and table
#fortune-tellers room chair, and pillars
#graveyard tree trunk
#guest room bed, lamp, and plant
#hallway 14 lamp
#hallway 8 lamp
#hidden room lamp
#kitchen closet, lamps, and table
#master berdoom bed, mirror, and plant
#mirror room lamps, and table
#nana's room bookshelf, closet, couch, lamp, sewing machine, and table
#nursery crib, and lamp
#observatory chair, lamp, and table
#parlor closet, lamp, and tables
#projection room closet, lamps, screen, speakers, and table
#rec room lamps, table, and weights
#safari room crates, lamps and mirror
#sealed room lamp, and table
#secret altar lamps, and mirror
#sitting room chair, couch, lamp, and plant
#storage room crates, lamp, and mirror
#study bookshelves, lamps, and table
#tea room drawers, lamp, and tables
#telephone room couch, lamps, and table
#the artist's studio lamp, and table
#the twins' room bunk bed, and lamp
#wardrobe room lamp
#washroom 1 cabinet, and mirror
#washroom 2 mirror