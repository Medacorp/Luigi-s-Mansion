scoreboard players set @s[scores={Shrunk=0}] EntitySizeWidth 8
scoreboard players set @s[scores={Shrunk=0}] EntitySizeHeight 20
scoreboard players set @s[scores={Shrunk=1..}] EntitySizeWidth 4
scoreboard players set @s[scores={Shrunk=1..}] EntitySizeHeight 10
scoreboard players operation @s TargetX = @s PositionX
scoreboard players operation @s TargetY = @s PositionY
scoreboard players operation @s TargetZ = @s PositionZ
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players add @s[scores={Shrunk=0}] PositionY 10
scoreboard players add @s[scores={Shrunk=1..}] PositionY 5