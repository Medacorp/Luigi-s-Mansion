data modify storage luigis_mansion:data furniture set value {room:70,pose:[0.0f,0.0f,0.0f],scan_result:"warp"}
#pose:[5.0f,0.0f,0.0f]
execute if block 742 21 -52 minecraft:redstone_lamp run data modify storage luigis_mansion:data furniture.pose set value [0.0f,0.0f,-180.0f]
execute if block 742 21 -52 minecraft:redstone_lamp positioned 736.0 26 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror
execute unless block 742 21 -52 minecraft:redstone_lamp positioned 736.0 21 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror
