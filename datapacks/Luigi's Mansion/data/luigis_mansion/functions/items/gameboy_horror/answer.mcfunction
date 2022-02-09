tag @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}}] add hang_up
tag @s add me
scoreboard players set @a[tag=!me] GBHCall 0
scoreboard players set @a GBHWait 0
tag @s remove me
scoreboard players set @s[tag=hang_up] GBHWait 1200
function #luigis_mansion:items/gameboy_horror/answer
execute if entity @s[tag=hang_up] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/gameboy_horror/hang_up
scoreboard players reset @s[tag=hang_up] GBHDialog
execute if entity @s[tag=hang_up] run scoreboard players reset @a EGaddCallChoice
tag @s remove hang_up