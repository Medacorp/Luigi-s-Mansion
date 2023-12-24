teleport @s[scores={PositionIntZ=-16}] ~ ~ ~2
teleport @s[scores={PositionIntZ=-20,PositionIntX=729..741}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-21,PositionIntX=744..764}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-30,PositionIntX=744..764}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-37,PositionIntX=729..741}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-36,PositionIntX=744..764}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-27,PositionIntX=744..764}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-41}] ~ ~ ~1
execute if score #extra_gallery Selected matches 1 run tag @s[scores={PositionIntZ=-41}] add extra_gallery_door
teleport @s[scores={PositionIntX=778}] ~-1 ~ ~
teleport @s[scores={PositionIntX=742,PositionIntZ=-35..-31}] ~2 ~ ~
teleport @s[scores={PositionIntX=742,PositionIntZ=-26..-22}] ~2 ~ ~
teleport @s[scores={PositionIntX=742,PositionIntZ=-37..-36}] ~-1 ~ ~
teleport @s[scores={PositionIntX=742,PositionIntZ=-30..-27}] ~-1 ~ ~
teleport @s[scores={PositionIntX=742,PositionIntZ=-21..-20}] ~-1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-40..-36}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-30..-27}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-21..-16}] ~1 ~ ~
teleport @s[scores={PositionIntX=743}] ~-2 ~ ~
teleport @s[scores={PositionIntX=728}] ~1 ~ ~

teleport @s[scores={PositionIntY=76}] ~ ~1 ~
teleport @s[scores={PositionIntY=84}] ~ ~-1 ~

execute if score #global_3ds_remake_gallery Selected matches 1 run teleport @s ~ ~-75 ~
execute if score #global_3ds_remake_gallery Selected matches 1 unless block 772 4 -16 minecraft:dirt run function 3ds_remake:room/gallery/generate