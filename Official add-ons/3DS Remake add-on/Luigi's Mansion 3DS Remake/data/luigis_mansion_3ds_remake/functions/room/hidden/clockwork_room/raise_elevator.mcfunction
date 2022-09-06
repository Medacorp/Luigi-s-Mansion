scoreboard players add #clockwork_room_elevator Time 1
execute if score #clockwork_room_elevator Time matches 5 as @a[x=685.0,y=120,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 5 run clone 685 119 7 686 119 8 685 120 7
execute if score #clockwork_room_elevator Time matches 10 as @a[x=685.0,y=121,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 10 run clone 685 120 7 686 120 8 685 121 7
execute if score #clockwork_room_elevator Time matches 15 as @a[x=685.0,y=122,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 15 run clone 685 121 7 686 121 8 685 122 7
execute if score #clockwork_room_elevator Time matches 20 as @a[x=685.0,y=123,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 20 run clone 685 122 7 686 122 8 685 123 7
execute if score #clockwork_room_elevator Time matches 25 as @a[x=685.0,y=124,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 25 run clone 685 123 7 686 123 8 685 124 7
execute if score #clockwork_room_elevator Time matches 30 as @a[x=685.0,y=125,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 30 run clone 685 124 7 686 124 8 685 125 7
execute if score #clockwork_room_elevator Time matches 35 as @a[x=685.0,y=126,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 35 run clone 685 125 7 686 125 8 685 126 7
execute if score #clockwork_room_elevator Time matches 40 as @a[x=685.0,y=127,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 40 run clone 685 126 7 686 126 8 685 127 7
execute if score #clockwork_room_elevator Time matches 45 as @a[x=685.0,y=128,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 45 run clone 685 127 7 686 127 8 685 128 7
execute if score #clockwork_room_elevator Time matches 50 as @a[x=685.0,y=129,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 50 run clone 685 128 7 686 128 8 685 129 7
execute if score #clockwork_room_elevator Time matches 55 as @a[x=685.0,y=130,z=7.0,dx=1,dy=0,dz=1] at @s run teleport @s ~ ~1 ~ 
execute if score #clockwork_room_elevator Time matches 55 run clone 685 129 7 686 129 8 685 130 7
execute if score #clockwork_room_elevator Time matches 100 run scoreboard players reset #clockwork_room_elevator Searched
