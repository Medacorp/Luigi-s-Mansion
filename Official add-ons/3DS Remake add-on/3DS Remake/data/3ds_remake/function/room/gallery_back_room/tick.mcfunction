execute unless score #3ds_gallery_back_room Ticking matches 1 run function #3ds_remake:room/gallery_back_room/load
execute as @a[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] unless entity @s[scores={Room=-11}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] Room -11
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room -11
#/todelete

execute as @a[scores={Room=-11}] run function 3ds_remake:room/gallery_back_room/tick_per_player

execute unless block 736 2 -24 minecraft:barrier run function 3ds_remake:room/gallery/generate

function #3ds_remake:room/gallery_back_room/interactions/room