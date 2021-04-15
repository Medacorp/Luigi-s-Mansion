tag @s add maskless
function luigis_mansion:entities/ghost_guy/stop_dancing
data merge entity @s[tag=red] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:20}}]}
data merge entity @s[tag=green] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:23}}]}
data merge entity @s[tag=blue] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:26}}]}
data merge entity @s[tag=light_blue] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:29}}]}
data merge entity @s[tag=purple] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:32}}]}
data merge entity @s[tag=pink] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:35}}]}
data merge entity @s[tag=yellow] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:38}}]}
data merge entity @s[tag=orange] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:41}}]}
data merge entity @s[tag=brown] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:44}}]}
data merge entity @s[tag=white] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:47}}]}
tag @s remove attack
tag @s add complain
tag @s add stunable
execute rotated ~ 0 if entity @s[tag=!dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"normal"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}
execute rotated ~ 0 if entity @s[tag=dancing] run summon minecraft:item ^ ^1.3 ^0.4 {Item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.dancing_ghost_guy_mask"}'},luigis_mansion:{id:"luigis_mansion:ghost_guy_mask",type:"dancing"}}},PickupDelay:32767s,Age:4800s,Tags:["vacuumable"]}