execute if data entity @s ArmorItems[3].components."minecraft:custom_data".key run function luigis_mansion:entities/furniture/type/door/check_lock with entity @s ArmorItems[3].components."minecraft:custom_data"
execute if entity @s[tag=left_hinge] run tag @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] add left_door

execute if entity @s[tag=!locked,tag=!unlock] run tag @s add open_door
execute if entity @s[tag=!locked,tag=!unlock] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5",teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[tag=!locked,tag=!unlock,tag=push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/open/push
execute if entity @s[tag=!locked,tag=!unlock,tag=!push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/open/pull

execute if entity @s[tag=locked] run tag @s add bash_door
execute if entity @s[tag=locked] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5",teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[tag=locked,tag=push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/locked/push
execute if entity @s[tag=locked,tag=!push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/locked/pull

tag @s add me
execute if entity @s[tag=unlock] run tag @s add unlock_door
execute if entity @s[tag=unlock] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5",teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[tag=unlock,tag=push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/unlock/push with entity @e[tag=me,limit=1] ArmorItems[3].components."minecraft:custom_data"
execute if entity @s[tag=unlock,tag=!push] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/unlock/pull with entity @e[tag=me,limit=1] ArmorItems[3].components."minecraft:custom_data"
tag @s remove me

execute if entity @s[tag=locked] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"door/locked"},progress:0,room:0,player:0,door:0}
execute if entity @s[tag=unlock] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"door/unlock"},progress:0,room:0,player:0,door:0}
execute unless entity @s[tag=!locked,tag=!unlock] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute unless entity @s[tag=!locked,tag=!unlock] store result storage luigis_mansion:data dialogs[-1].player int 1 run scoreboard players get @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] ID
execute unless entity @s[tag=!locked,tag=!unlock] store result storage luigis_mansion:data dialogs[-1].door int 1 run scoreboard players get @s PassiveNr

tag @s remove locked
tag @s remove unlock