execute if entity @a[x=771.5,y=90,z=8.0,distance=..14,gamemode=!spectator,limit=1] run function luigis_mansion:entities/player/open_gate
function #luigis_mansion:mansion_detect
execute if entity @a[gamemode=!spectator,scores={Room=0}] run function luigis_mansion:room/door/boo_woods_underground_lab
execute as @a[gamemode=spectator,tag=!already_ticked,scores={HomeX=779..797,HomeY=75..88,HomeZ=4..25}] at @s run function luigis_mansion:room/underground_lab/spectator_tick
execute if entity @a[gamemode=!spectator,x=778,y=77,z=4,dx=20,dy=11,dz=21] run function luigis_mansion:room/underground_lab/tick
execute if score #underground_lab Ticking matches 1 unless entity @a[gamemode=!spectator,x=778,y=77,z=4,dx=20,dy=11,dz=21] unless entity @a[gamemode=!spectator,scores={Room=-1}] run function luigis_mansion:room/underground_lab/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,scores={HomeX=782..799,HomeY=75..83,HomeZ=-23..4}] at @s run function luigis_mansion:room/training_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=781,y=77,z=-23,dx=19,dy=6,dz=27] run function luigis_mansion:room/training_room/tick
execute if score #training_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=781,y=77,z=-22,dx=19,dy=6,dz=27] unless entity @a[gamemode=!spectator,scores={Room=-2}] run function luigis_mansion:room/training_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,scores={HomeX=765..778,HomeY=75..83,HomeZ=-15..25}] at @s run function luigis_mansion:room/ghost_portrificationizer_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=764,y=77,z=-15,dx=15,dy=6,dz=40] run function luigis_mansion:room/ghost_portrificationizer_room/tick
execute if score #ghost_portrificationizer_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=764,y=77,z=-16,dx=15,dy=6,dz=40] unless entity @a[gamemode=!spectator,scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,scores={HomeX=728..778,HomeY=75..86,HomeZ=-42..-15}] at @s run function luigis_mansion:room/gallery/spectator_tick
execute if entity @a[gamemode=!spectator,x=727,y=77,z=-42,dx=52,dy=9,dz=27] run function luigis_mansion:room/gallery/tick
execute if score #gallery Ticking matches 1 unless entity @a[gamemode=!spectator,x=727,y=77,z=-42,dx=52,dy=9,dz=27] unless entity @a[gamemode=!spectator,scores={Room=-4}] run function luigis_mansion:room/gallery/not_ticking