scoreboard players add #dialog Dialog 1
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"item"}}}}]},tag=same_room,limit=1] run function luigis_mansion:dialog/play/collect_item_freeze/not_frozen_item with entity @s ArmorItems[3].tag.luigis_mansion.item
execute if score #dialog Dialog matches 70 run scoreboard players set #dialog Dialog -1