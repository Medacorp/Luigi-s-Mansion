execute unless score #foyer Ticking matches 1 run function #3ds_remake:room/hidden/foyer/load
execute as @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] Room 1
#todelete - old furniture
scoreboard players set #temp Room 1
#/todelete

execute as @a[scores={Room=1}] run function 3ds_remake:room/hidden/foyer/tick_per_player

execute if entity @e[tag=toad,scores={Room=1},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.foyer{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_1"},room:1,progress:0}
execute if entity @e[tag=toad,scores={Room=1},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.foyer{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_1_repeat"},room:1,progress:0}

#todelete - old furniture
function #3ds_remake:room/hidden/foyer/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=1},limit=1] run function 3ds_remake:room/hidden/foyer/ghosts