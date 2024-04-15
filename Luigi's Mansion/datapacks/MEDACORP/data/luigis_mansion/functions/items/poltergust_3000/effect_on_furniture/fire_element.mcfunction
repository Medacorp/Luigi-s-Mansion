scoreboard players operation #temp PositionX = @s FurnitureElementLeft
scoreboard players operation #temp PositionY = @s FurnitureElementUp
scoreboard players operation #temp PositionZ = @s FurnitureElementForward
function luigis_mansion:entities/poltergust_3000/effect_on_furniture/move
execute store result score #temp PositionX run data get entity @s Pos[0] 100
execute store result score #temp PositionY run data get entity @s Pos[1] 100
scoreboard players add #temp PositionY 140
execute store result score #temp PositionZ run data get entity @s Pos[2] 100
teleport @s ~ ~ ~
scoreboard players operation #temp2 PositionX = #interact PositionX
scoreboard players operation #temp2 PositionY = #interact PositionY
scoreboard players operation #temp2 PositionZ = #interact PositionZ
scoreboard players operation #temp2 PositionX -= #temp PositionX
scoreboard players operation #temp2 PositionY -= #temp PositionY
scoreboard players operation #temp2 PositionZ -= #temp PositionZ
scoreboard players operation #temp2 PositionX *= #temp2 PositionX
scoreboard players operation #temp2 PositionY *= #temp2 PositionY
scoreboard players operation #temp2 PositionZ *= #temp2 PositionZ
scoreboard players operation #temp2 PositionX += #temp2 PositionY
scoreboard players operation #temp2 PositionX += #temp2 PositionZ
execute if score #temp2 PositionX matches ..35 run tag @s add element_in_fire
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ