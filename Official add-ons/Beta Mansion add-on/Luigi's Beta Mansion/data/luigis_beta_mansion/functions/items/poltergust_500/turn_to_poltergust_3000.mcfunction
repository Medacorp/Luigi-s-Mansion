scoreboard players remove @s OverheatMeter 0
function luigis_beta_mansion:items/poltergust_500/sync_overheat_meter
scoreboard players reset @s[scores={OverheatMeter=..0}] OverheatMeter
summon minecraft:armor_stand ~ 0 ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_beta_mansion:poltergust_500"}}}].tag set value {HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.poltergust_3000"}',Lore:['{"italic":false,"color":"gray","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"translate":"luigis_mansion:item.poltergust_3000.element.none","color":"gray"}]}']},luigis_mansion:{id:"luigis_mansion:poltergust_3000",poltergust_model_data:0,element:{type:0b},kill:1b}}
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load