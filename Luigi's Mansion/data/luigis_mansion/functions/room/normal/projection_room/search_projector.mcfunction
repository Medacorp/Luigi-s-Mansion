execute positioned 683 103 5 run function luigis_mansion:blocks/dust
scoreboard players set #projection_room_projector Searched 1
tag @e[x=683.5,y=103,z=5.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=683.5,y=103,z=5.5,distance=..0.7,tag=ghost_marker] add spawn
execute unless entity @a[advancements={luigis_mansion:mansion/projection_room=true},tag=!blackout] run setblock 684 103 5 minecraft:soul_torch