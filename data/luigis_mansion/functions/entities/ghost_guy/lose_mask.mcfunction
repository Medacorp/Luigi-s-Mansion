tag @s add maskless
function luigis_mansion:entities/ghost_guy/stop_dancing
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[tag=!dancing] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players remove #temp Time 1
execute if entity @s[tag=dancing] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
tag @s remove attack
tag @s add complain
tag @s add stunable
execute rotated ~ 0 if entity @s[tag=!dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"normal"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}
execute rotated ~ 0 if entity @s[tag=dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.dancing_ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"dancing"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}