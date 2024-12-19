execute unless score #3ds_gallery Ticking matches 1 run function #3ds_remake:room/gallery/load
execute as @e[tag=player,x=744,y=-1,z=-41,dx=32,dy=29,dz=25] unless entity @s[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] unless entity @s[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] unless entity @s[scores={Room=-8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=player,x=744,y=-1,z=-41,dx=32,dy=29,dz=25] unless entity @s[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] unless entity @s[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] run scoreboard players set @s Room -8
#todelete - old furniture
scoreboard players set #temp Room -8
#/todelete

execute if entity @e[tag=e_gadd,scores={Room=-8},tag=talk_this_tick] if data storage luigis_mansion:data rooms.gallery{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:-8}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/talk"},room:-8,progress:0}
execute if entity @e[tag=e_gadd,scores={Room=-8},tag=talk_this_tick] if data storage luigis_mansion:data rooms.gallery{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-8}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/repeat"},room:-8,progress:0}

execute as @a[scores={Room=-8}] run function 3ds_remake:room/gallery/tick_per_player

execute unless block 767 2 -36 minecraft:barrier run function 3ds_remake:room/gallery/generate

function #3ds_remake:room/gallery/interactions/room