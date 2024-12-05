stopsound @s[scores={PositionIntX=653,PositionIntZ=-21..-11}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=-21..-11}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=-8..-4}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=-8..-4}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=-1..23}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=-1..23}] RoomNoise 1
stopsound @s[scores={PositionIntX=653,PositionIntZ=26..55}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntX=653,PositionIntZ=26..55}] RoomNoise 1
stopsound @s[scores={PositionIntZ=-22}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntZ=-22}] RoomNoise 1

stopsound @s[scores={PositionIntY=101,PositionIntZ=20..25,PositionIntX=648}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntY=101,PositionIntZ=20..25,PositionIntX=648}] RoomNoise 1
stopsound @s[scores={PositionIntY=101,PositionIntZ=26..40}] neutral luigis_mansion:entity.mario.hey_whats_the_hold_up
scoreboard players set @s[scores={PositionIntY=101,PositionIntZ=26..40}] RoomNoise 1

execute if entity @s[scores={PositionIntX=644}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-22}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-21..-11}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-3 ~-91 ~9"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-10..-9}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-8..-4}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~16 ~-91 ~13"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-3..-2}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=-1..23}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~-91 ~19"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=24..25}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=653,PositionIntZ=26..55}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-14 ~-91 ~20"}
execute if entity @s[scores={PositionIntZ=56}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntZ=-22}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-2"}

execute if entity @s[scores={PositionIntY=109}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=-22..16}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=17..19,PositionIntX=645..646}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=17..19,PositionIntX=650..652}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=20..25,PositionIntX=645..647}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=20..25,PositionIntX=648}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-7 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=20..25,PositionIntX=649..652}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=26..40}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-2 ~"}
execute if entity @s[scores={PositionIntY=101,PositionIntZ=41..55}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}