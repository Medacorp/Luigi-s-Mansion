execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/hidden/astral_hall/load
execute as @a[x=671,y=111,z=24,dx=12,dy=6,dz=22] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=111,z=24,dx=12,dy=6,dz=22] run scoreboard players set @s Room 35
execute unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} unless block 677 111 47 minecraft:iron_door[powered=true] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 run fill 677 111 47 677 112 47 minecraft:air
execute if score #temp Searched matches 1 run setblock 677 111 47 minecraft:iron_door[open=false,facing=south,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 677 112 47 minecraft:iron_door[open=false,facing=south,half=upper,hinge=right,powered=true]
scoreboard players reset #temp Searched

execute as @a[gamemode=!spectator,x=673,y=111,z=26,dx=8,dy=6,dz=18] run function luigis_mansion:room/hidden/astral_hall/tick_per_player
execute as @a[x=677,y=111,z=46,dx=0,dy=1,dz=0] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} at @s run function luigis_mansion:room/hidden/astral_hall/trick_door

function #luigis_mansion:room/hidden/astral_hall/interactions/room

function luigis_mansion:room/hidden/astral_hall/ghosts

function luigis_mansion:room/hidden/door/hallway_astral_hall
function luigis_mansion:room/hidden/door/astral_hall_observatory