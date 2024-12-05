execute unless score #observatory Ticking matches 1 run function #luigis_mansion:room/hidden/observatory/load
execute as @e[tag=player,x=627,y=15,z=87,dx=24,dy=12,dz=72] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=627,y=15,z=87,dx=24,dy=12,dz=72] Room 46
#todelete - old furniture
scoreboard players set #temp Room 46
#/todelete

execute as @a[scores={Room=46}] run function luigis_mansion:room/hidden/observatory/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/observatory/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=46},limit=1] run function luigis_mansion:room/hidden/observatory/ghosts

execute as @e[tag=player,x=643.5,y=20,z=95.5,distance=..0.7,y_rotation=-45..45,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data dialogs[{room:46}] run function luigis_mansion:room/hidden/observatory/observe_moon