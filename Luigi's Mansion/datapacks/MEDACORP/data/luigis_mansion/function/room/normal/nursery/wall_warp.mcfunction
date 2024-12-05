stopsound @s[scores={PositionIntX=738}] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[scores={PositionIntX=738}] RoomNoise 1
stopsound @s[scores={PositionIntZ=54}] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[scores={PositionIntZ=54}] RoomNoise 1

stopsound @s[scores={PositionIntY=19}] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[scores={PositionIntY=19}] RoomNoise 1
stopsound @s[scores={PositionIntY=27}] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[scores={PositionIntY=27}] RoomNoise 1

execute if entity @s[scores={PositionIntX=738}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-10 ~ ~8"}
execute if entity @s[scores={PositionIntX=750}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=54}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~-6"}
execute if entity @s[scores={PositionIntZ=72}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-1"}

execute if entity @s[scores={PositionIntY=19}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-2 ~"}
execute if entity @s[scores={PositionIntY=27}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~14 ~2 ~7"}