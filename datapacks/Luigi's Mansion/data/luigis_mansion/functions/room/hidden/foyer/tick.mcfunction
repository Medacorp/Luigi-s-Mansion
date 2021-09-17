execute unless score #foyer Ticking matches 1 run function #luigis_mansion:room/hidden/foyer/load
execute as @a[gamemode=!spectator,x=743,y=10,z=-4,dx=15,dy=17,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=743,y=10,z=-4,dx=15,dy=17,dz=21] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 1
tag @e[tag=ghost,scores={Room=1}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=1}] run function luigis_mansion:room/normal/foyer/tick_per_player

function #luigis_mansion:room/hidden/foyer/interactions/room

function luigis_mansion:room/hidden/foyer/ghosts

function luigis_mansion:room/hidden/door/boo_woods_foyer
function luigis_mansion:room/hidden/door/foyer_hallway_3