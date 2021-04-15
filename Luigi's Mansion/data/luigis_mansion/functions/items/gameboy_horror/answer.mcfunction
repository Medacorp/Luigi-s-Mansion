tag @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}}] add hang_up
tag @s add me
scoreboard players set @a[tag=!me] GBHCall 0
scoreboard players set @a[tag=!me] GBHWait 0
tag @s remove me
function #luigis_mansion:items/gameboy_horror/answer
execute if entity @s[tag=hang_up] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/gameboy_horror/hang_up
scoreboard players reset @s[tag=hang_up] Dialog
tag @s remove hang_up