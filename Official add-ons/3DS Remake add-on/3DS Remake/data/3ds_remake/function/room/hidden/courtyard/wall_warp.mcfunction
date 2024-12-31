stopsound @s[scores={PositionIntX=653,PositionIntZ=26..36}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=26..36}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=19..23}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=19..23}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=-8..16}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=-8..16}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=-40..-11}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=-40..-11}] RoomNoise 1
stopsound @s[scores={PositionIntZ=37}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntZ=37}] RoomNoise 1

stopsound @s[scores={PositionIntY=101,PositionIntZ=-10..-5,PositionIntX=648}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntY=101,PositionIntZ=-10..-5,PositionIntX=648}] RoomNoise 1
stopsound @s[scores={PositionIntY=101,PositionIntZ=-25..-11}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntY=101,PositionIntZ=-25..-11}] RoomNoise 1

execute if entity @s[scores={PositionIntX=644}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=37}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=26..36}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-3 ~-91 ~-9"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=24..25}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=19..23}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~16 ~-91 ~-13"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=17..18}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-8..16}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~-91 ~-19"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-10..-9}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-40..-11}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-14 ~-91 ~-20"}
execute if entity @s[scores={PositionIntZ=-41}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=37}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~2"}

execute if entity @s[scores={PositionIntY=109}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-1..37}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-4..-2,PositionIntX=645..646}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-4..-2,PositionIntX=650..652}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-10..-5,PositionIntX=645..647}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-10..-5,PositionIntX=648}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-7 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-10..-5,PositionIntX=649..652}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-25..-11}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-2 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-40..-26}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}