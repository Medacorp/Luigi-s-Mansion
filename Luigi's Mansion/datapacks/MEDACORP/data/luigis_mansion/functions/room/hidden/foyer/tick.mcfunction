execute unless score #foyer Ticking matches 1 run function #luigis_mansion:room/hidden/foyer/load
execute as @a[x=743,y=10,z=-4,dx=15,dy=16,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=743,y=10,z=-4,dx=15,dy=16,dz=21] Room 1
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 1
#/todelete

execute as @a[scores={Room=1}] run function luigis_mansion:room/hidden/foyer/tick_per_player

execute if entity @e[tag=toad,scores={Room=1},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.foyer{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_1"},room:1,progress:0}
execute if entity @e[tag=toad,scores={Room=1},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.foyer{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_1_repeat"},room:1,progress:0}

function #luigis_mansion:room/hidden/foyer/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=1},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/foyer/ghosts