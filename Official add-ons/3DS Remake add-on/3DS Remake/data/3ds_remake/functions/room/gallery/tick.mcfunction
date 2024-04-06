execute unless score #3ds_gallery Ticking matches 1 run function #3ds_remake:room/gallery/load
execute as @a[x=733,y=-1,z=-60,dx=43,dy=27,dz=44] unless entity @s[scores={Room=-5}] run scoreboard players set @s LastRoom -5
scoreboard players set @e[x=733,y=-1,z=-60,dx=43,dy=27,dz=44] Room -5

execute if entity @e[tag=e_gadd,scores={Room=-5},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:-5}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/talk"},room:-5,progress:0}
execute if entity @e[tag=e_gadd,scores={Room=-5},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-5}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"gallery/repeat"},room:-5,progress:0}

execute as @a[scores={Room=-5}] run function 3ds_remake:room/gallery/tick_per_player

function #3ds_remake:room/gallery/interactions/room