execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify storage luigis_mansion:data main_hand.Slot set value 0b
execute in minecraft:overworld run data modify block 27 0 0 Items[0] set from storage luigis_mansion:data main_hand
data remove storage luigis_mansion:data main_hand

tag @s add modifying_inventory
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 27 0 0 minecraft:golden_pickaxe[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
tag @s remove modifying_inventory