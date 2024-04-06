execute unless score #observatory Ticking matches 1 run function #3ds_remake:room/hidden/observatory/load
execute as @a[x=627,y=15,z=-145,dx=24,dy=12,dz=72] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=627,y=15,z=-145,dx=24,dy=12,dz=72] Room 46

execute as @a[scores={Room=46}] run function 3ds_remake:room/hidden/observatory/tick_per_player

execute as @a[x=643.5,y=20,z=-79.5,distance=..0.7,y_rotation=135..-135,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data dialogs[{room:46}] run function 3ds_remake:room/hidden/observatory/observe_moon

function #3ds_remake:room/hidden/observatory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=46},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/observatory/ghosts