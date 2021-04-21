execute if score #mirror_room_fire Searched matches 1 run setblock 746 14 -61 minecraft:soul_campfire[lit=false,facing=north]
execute if score #mirror_room_fire Searched matches 1 run setblock 724 14 -61 minecraft:soul_campfire[lit=false,facing=south]
execute unless score #mirror_room_fire Searched matches 1 run setblock 746 14 -61 minecraft:soul_campfire[lit=true,facing=north]
execute unless score #mirror_room_fire Searched matches 1 run setblock 724 14 -61 minecraft:soul_campfire[lit=true,facing=south]