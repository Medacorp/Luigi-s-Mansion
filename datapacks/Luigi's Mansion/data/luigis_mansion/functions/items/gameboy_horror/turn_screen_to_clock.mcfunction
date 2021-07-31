execute store result score #temp Time run data get entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}].tag.CustomModelData
execute if score #gbh_clock Selected matches 1728000.. run scoreboard players remove #gbh_clock Selected 1728000
scoreboard players operation #temp ActionTime = #gbh_clock Selected
scoreboard players operation #temp ActionTime /= #20 Constants
scoreboard players operation #temp ActionTime /= #60 Constants
scoreboard players add #temp ActionTime 3
execute if score #gbh_clock Selected matches 0..1728000 unless score #temp Time = #temp ActionTime run function luigis_mansion:items/gameboy_horror/sync_clock
scoreboard players reset #temp Time
scoreboard players reset #temp ActionTime