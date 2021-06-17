tag @s add maskless
function luigis_mansion:entities/ghost_guy/stop_dancing
data modify entity @s ArmorItems[3].tag.CustomModelData set value 4
tag @s remove attack
tag @s add complain
tag @s add stunable
execute rotated ~ 0 if entity @s[tag=!dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"normal"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}
execute rotated ~ 0 if entity @s[tag=dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.dancing_ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"dancing"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}