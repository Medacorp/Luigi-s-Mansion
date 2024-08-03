execute unless score #gallery Ticking matches 1 run function #luigis_mansion:room/gallery/load
execute as @a[x=764,y=75,z=-41,dx=8,dy=10,dz=25] unless entity @s[scores={Room=-4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=764,y=75,z=-41,dx=8,dy=10,dz=25] Room -4
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room -4
#/todelete

execute if entity @e[tag=e_gadd,scores={Room=-4},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:-4}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/talk"},room:-4,progress:0}
execute if entity @e[tag=e_gadd,scores={Room=-4},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-4}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/repeat"},room:-4,progress:0}

execute as @a[scores={Room=-4}] run function luigis_mansion:room/gallery/tick_per_player

function #luigis_mansion:room/gallery/interactions/room