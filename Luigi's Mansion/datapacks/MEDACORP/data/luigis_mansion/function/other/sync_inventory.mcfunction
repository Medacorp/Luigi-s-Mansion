execute unless data storage luigis_mansion:data inventory run data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute unless data storage luigis_mansion:data equipment run data modify storage luigis_mansion:data equipment set from entity @s equipment
execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 0 0 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory[{Slot:0b}]
data remove storage luigis_mansion:data inventory[{Slot:1b}]
data remove storage luigis_mansion:data inventory[{Slot:2b}]
data remove storage luigis_mansion:data inventory[{Slot:3b}]
data remove storage luigis_mansion:data inventory[{Slot:4b}]
data remove storage luigis_mansion:data inventory[{Slot:5b}]
data remove storage luigis_mansion:data inventory[{Slot:6b}]
data remove storage luigis_mansion:data inventory[{Slot:7b}]
data remove storage luigis_mansion:data inventory[{Slot:8b}]
data remove storage luigis_mansion:data inventory[{Slot:9b}]
data remove storage luigis_mansion:data inventory[{Slot:10b}]
data remove storage luigis_mansion:data inventory[{Slot:11b}]
data remove storage luigis_mansion:data inventory[{Slot:12b}]
data remove storage luigis_mansion:data inventory[{Slot:13b}]
data remove storage luigis_mansion:data inventory[{Slot:14b}]
data remove storage luigis_mansion:data inventory[{Slot:15b}]
data remove storage luigis_mansion:data inventory[{Slot:16b}]
data remove storage luigis_mansion:data inventory[{Slot:17b}]
data remove storage luigis_mansion:data inventory[{Slot:18b}]
data remove storage luigis_mansion:data inventory[{Slot:19b}]
data remove storage luigis_mansion:data inventory[{Slot:20b}]
data remove storage luigis_mansion:data inventory[{Slot:21b}]
data remove storage luigis_mansion:data inventory[{Slot:22b}]
data remove storage luigis_mansion:data inventory[{Slot:23b}]
data remove storage luigis_mansion:data inventory[{Slot:24b}]
data remove storage luigis_mansion:data inventory[{Slot:25b}]
data remove storage luigis_mansion:data inventory[{Slot:26b}]
execute if data storage luigis_mansion:data inventory[{Slot:27b}] run data modify storage luigis_mansion:data inventory[{Slot:27b}] merge value {Slot:0b}
execute if data storage luigis_mansion:data inventory[{Slot:28b}] run data modify storage luigis_mansion:data inventory[{Slot:28b}] merge value {Slot:1b}
execute if data storage luigis_mansion:data inventory[{Slot:29b}] run data modify storage luigis_mansion:data inventory[{Slot:29b}] merge value {Slot:2b}
execute if data storage luigis_mansion:data inventory[{Slot:30b}] run data modify storage luigis_mansion:data inventory[{Slot:30b}] merge value {Slot:3b}
execute if data storage luigis_mansion:data inventory[{Slot:31b}] run data modify storage luigis_mansion:data inventory[{Slot:31b}] merge value {Slot:4b}
execute if data storage luigis_mansion:data inventory[{Slot:32b}] run data modify storage luigis_mansion:data inventory[{Slot:32b}] merge value {Slot:5b}
execute if data storage luigis_mansion:data inventory[{Slot:33b}] run data modify storage luigis_mansion:data inventory[{Slot:33b}] merge value {Slot:6b}
execute if data storage luigis_mansion:data inventory[{Slot:34b}] run data modify storage luigis_mansion:data inventory[{Slot:34b}] merge value {Slot:7b}
execute if data storage luigis_mansion:data inventory[{Slot:35b}] run data modify storage luigis_mansion:data inventory[{Slot:35b}] merge value {Slot:8b}
execute in minecraft:overworld run setblock 27 1 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 1 0 Items set from storage luigis_mansion:data inventory
data modify storage luigis_mansion:data inventory set value []
execute if data storage luigis_mansion:data equipment.feet run data modify storage luigis_mansion:data equipment.feet merge value {Slot:0b}
execute if data storage luigis_mansion:data equipment.legs run data modify storage luigis_mansion:data equipment.legs merge value {Slot:1b}
execute if data storage luigis_mansion:data equipment.chest run data modify storage luigis_mansion:data equipment.chest merge value {Slot:2b}
execute if data storage luigis_mansion:data equipment.head run data modify storage luigis_mansion:data equipment.head merge value {Slot:3b}
execute if data storage luigis_mansion:data equipment.body run data modify storage luigis_mansion:data equipment.body merge value {Slot:4b}
execute if data storage luigis_mansion:data equipment.saddle run data modify storage luigis_mansion:data equipment.saddle merge value {Slot:5b}
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.feet
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.legs
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.chest
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.head
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.body
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.saddle
execute in minecraft:overworld run setblock 27 0 1 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 0 1 Items set from storage luigis_mansion:data inventory
data modify storage luigis_mansion:data inventory set value []
execute if data storage luigis_mansion:data equipment.offhand run data modify storage luigis_mansion:data equipment.offhand merge value {Slot:0b}
data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data equipment.offhand
execute in minecraft:overworld run setblock 28 0 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 28 0 0 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory
data remove storage luigis_mansion:data equipment

tag @s add modifying_inventory
execute in minecraft:overworld run loot replace entity @s hotbar.0 mine 27 0 0 minecraft:golden_pickaxe[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run loot replace entity @s inventory.18 9 mine 27 1 0 minecraft:golden_pickaxe[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run loot replace entity @s armor.feet 6 mine 27 0 1 minecraft:golden_pickaxe[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 28 0 0 minecraft:golden_pickaxe[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 27 1 0 minecraft:stone
execute in minecraft:overworld run setblock 27 0 1 minecraft:bedrock
execute in minecraft:overworld run setblock 28 0 0 minecraft:bedrock
tag @s remove modifying_inventory