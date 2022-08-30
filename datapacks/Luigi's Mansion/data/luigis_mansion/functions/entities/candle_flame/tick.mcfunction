#execute if entity @s[tag=lit,tag=!purple] run data modify entity @s ArmorItems[3] set value REDFLAME
#execute if entity @s[tag=lit,tag=purple] run data modify entity @s ArmorItems[3] set value PURPLEFLAME
execute if entity @s[tag=!lit] run data modify entity @s ArmorItems[3] set value {}