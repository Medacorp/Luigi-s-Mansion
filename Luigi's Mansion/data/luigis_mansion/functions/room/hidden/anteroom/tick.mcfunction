execute unless score #anteroom Ticking matches 1 run function #luigis_mansion:room/hidden/anteroom/load
execute as @a[x=671,y=111,z=-3,dx=12,dy=6,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=111,z=-3,dx=12,dy=6,dz=21] run scoreboard players set @s Room 3

execute as @a[gamemode=!spectator,x=673,y=111,z=-1,dx=8,dy=6,dz=17] run function luigis_mansion:room/hidden/anteroom/tick_per_player

function #luigis_mansion:room/hidden/anteroom/interactions/room

function luigis_mansion:room/hidden/anteroom/ghosts

function luigis_mansion:room/hidden/door/parlor_anteroom
function luigis_mansion:room/hidden/door/anteroom_wardrobe_room