scoreboard players set #loaded_exterior Selected 1
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion

tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.start"}]}
forceload add 774 9
setblock 771 97 13 minecraft:soul_fire
setblock 771 97 2 minecraft:soul_fire
forceload remove 774 9
forceload add 749 -66 615 81
place template luigis_beta_mansion:mansion/beta_mansion/24 712 138 789
place template luigis_beta_mansion:mansion/beta_mansion/23 712 138 31
place template luigis_beta_mansion:mansion/beta_mansion/22 712 138 -17
place template luigis_beta_mansion:mansion/beta_mansion/21 712 138 -65
place template luigis_beta_mansion:mansion/beta_mansion/20 664 138 79
place template luigis_beta_mansion:mansion/beta_mansion/19 664 138 31
place template luigis_beta_mansion:mansion/beta_mansion/18 664 138 -17
place template luigis_beta_mansion:mansion/beta_mansion/17 664 138 -65
place template luigis_beta_mansion:mansion/beta_mansion/16 616 138 79
place template luigis_beta_mansion:mansion/beta_mansion/15 616 138 31
place template luigis_beta_mansion:mansion/beta_mansion/14 616 138 -17
place template luigis_beta_mansion:mansion/beta_mansion/13 616 138 -65
place template luigis_beta_mansion:mansion/beta_mansion/12 712 90 79
place template luigis_beta_mansion:mansion/beta_mansion/11 712 90 31
place template luigis_beta_mansion:mansion/beta_mansion/10 712 90 -17
place template luigis_beta_mansion:mansion/beta_mansion/9 712 90 -65
place template luigis_beta_mansion:mansion/beta_mansion/8 664 90 79
place template luigis_beta_mansion:mansion/beta_mansion/7 664 90 31
place template luigis_beta_mansion:mansion/beta_mansion/6 664 90 -17
place template luigis_beta_mansion:mansion/beta_mansion/5 664 90 -65
place template luigis_beta_mansion:mansion/beta_mansion/4 616 90 79
place template luigis_beta_mansion:mansion/beta_mansion/3 616 90 31
place template luigis_beta_mansion:mansion/beta_mansion/2 616 90 -17
place template luigis_beta_mansion:mansion/beta_mansion/1 616 90 -65
tag @e[scores={Room=0},tag=door] add remove_from_existence
execute positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/entrance
execute positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_basic
execute positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/entrance
execute positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_basic
scoreboard players set @e[x=720.5,y=102,z=8.0,distance=..3,tag=door] Room 0
forceload remove 749 -66 615 81
tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.stop"}]}