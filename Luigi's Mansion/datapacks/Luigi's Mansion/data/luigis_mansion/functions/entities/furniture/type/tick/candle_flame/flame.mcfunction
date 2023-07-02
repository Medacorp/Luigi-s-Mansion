tag @s[tag=lit,tag=in_vacuum] add extinguish
tag @s[tag=lit,tag=in_dust] add extinguish
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s[tag=!lit,tag=in_fire] add lit
tag @s[tag=lit,tag=in_water] remove lit
tag @s[tag=lit,tag=in_ice] add extinguish
tag @s[tag=extinguish,tag=!cannot_extinguish] remove lit
tag @s[tag=extinguish,tag=cannot_extinguish] add large_flame
tag @s[tag=extinguish,tag=always_burn] add large_flame
tag @s[tag=extinguish,tag=always_burn] remove extinguish
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s[tag=!lit,tag=always_burn] add large_flame
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s[tag=!lit,tag=large_flame] add lit
execute if entity @s[tag=!purple,tag=large_flame] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:92}}
execute if entity @s[tag=purple,tag=large_flame] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:93}}

execute if entity @s[tag=lit,tag=!purple,tag=!large_flame,tag=extinguish,tag=cannot_extinguish] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:92}}
execute if entity @s[tag=lit,tag=purple,tag=!large_flame,tag=extinguish,tag=cannot_extinguish] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:93}}

execute if entity @s[tag=lit,tag=!purple,tag=!large_flame,tag=!extinguish] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:5}}
execute if entity @s[tag=lit,tag=purple,tag=!large_flame,tag=!extinguish] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:6}}

execute if entity @s[tag=!lit,tag=!large_flame] run data modify entity @s ArmorItems[3] set value {}
tag @s remove extinguish
scoreboard players add @s[tag=large_flame] ActionTime 1
tag @s[scores={ActionTime=40}] remove large_flame
scoreboard players reset @s[scores={ActionTime=40}] ActionTime