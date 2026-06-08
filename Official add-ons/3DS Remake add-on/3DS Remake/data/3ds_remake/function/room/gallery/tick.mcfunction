execute if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
execute unless score #3ds_gallery Ticking matches 1 run function #3ds_remake:room/gallery/load
execute as @e[tag=player,x=744,y=-1,z=-41,dx=32,dy=29,dz=25] unless entity @s[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] unless entity @s[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] unless entity @s[scores={Room=-8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=player,x=744,y=-1,z=-41,dx=32,dy=29,dz=25] unless entity @s[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] unless entity @s[x=733,y=-1,z=-36,dx=11,dy=27,dz=15] run scoreboard players set @s Room -8
#todelete - old furniture
scoreboard players set #temp Room -8
#/todelete

execute as @a[scores={Room=-8}] run function 3ds_remake:room/gallery/tick_per_player

execute unless block 767 2 -36 minecraft:barrier run function 3ds_remake:room/gallery/generate

#todelete - old furniture
function #3ds_remake:room/gallery/interactions/room
#/todelete

execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1