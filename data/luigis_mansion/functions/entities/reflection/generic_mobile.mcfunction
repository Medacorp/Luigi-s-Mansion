teleport @s ~ ~ ~ ~ ~
execute if score #temp MirrorX matches -2147483648.. run scoreboard players operation #temp MirrorX *= #100 Constants
execute if score #temp MirrorX matches -2147483648.. run scoreboard players add #temp MirrorX 50
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players operation #temp MirrorZ *= #100 Constants
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players add #temp MirrorZ 50

execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/reflection/rotation/x
execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/reflection/rotation/z
execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/reflection/position/z