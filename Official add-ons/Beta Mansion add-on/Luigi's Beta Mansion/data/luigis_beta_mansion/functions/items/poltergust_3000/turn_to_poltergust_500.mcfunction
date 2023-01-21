function luigis_mansion:entities/player/memory/get
data modify storage luigis_mansion:data my_memory.poltergust_element set value "none"
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
scoreboard players remove @s ElementMeter 0
function luigis_mansion:items/poltergust_3000/sync_element_meter
scoreboard players reset @s[scores={ElementMeter=..0}] ElementMeter
data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}].tag set value {HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"luigis_beta_mansion:item.poltergust_500"}'},luigis_mansion:{id:"luigis_beta_mansion:poltergust_500",is_poltergust:1b,is_nozzle:1b,model:{body_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:12,mirror:{tag:{CustomModelData:13}}}},body_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:13,mirror:{tag:{CustomModelData:12}}}},sat_on_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:14,mirror:{tag:{CustomModelData:15}}}},sat_on_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:15,mirror:{tag:{CustomModelData:14}}}},idle_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:16,mirror:{tag:{CustomModelData:17}}}},idle_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:17,mirror:{tag:{CustomModelData:16}}}}},kill:1b}}
function luigis_mansion:other/sync_inventory