data modify storage luigis_mansion:data current_state.current_data merge value {caught_ghosts:[],money_grabbed:[{money:{},total:0,uuid:[I;]}],rooms:{hallway_1:{seen:0b,cleared:0b},hallway_2:{seen:0b,cleared:0b},hallway_3:{seen:0b,cleared:0b},hallway_4:{seen:0b,cleared:0b},hallway_5:{seen:0b,cleared:0b},hallway_6:{seen:0b,cleared:0b},hallway_7:{seen:0b,cleared:0b},hallway_8:{seen:0b,cleared:0b},hallway_9:{seen:0b,cleared:0b},hallway_10:{seen:0b,cleared:0b},hallway_11:{seen:0b,cleared:0b},hallway_12:{seen:0b,cleared:0b},hallway_13:{seen:0b,cleared:0b},hallway_14:{seen:0b,cleared:0b},hallway_15:{seen:0b,cleared:0b},hallway_16:{seen:0b,cleared:0b},hallway_17:{seen:0b,cleared:0b},hallway_18:{seen:0b,cleared:0b},hallway_19:{seen:0b,cleared:0b},hallway_20:{seen:0b,cleared:0b},hallway_21:{seen:0b,cleared:0b},hallway_22:{seen:0b,cleared:0b}},portrait_ghosts:{neville:{loot:{}},lydia:{loot:{}},chauncey:{loot:{}},floating_whirlindas:{loot:{}},shivers:{loot:{}},melody_pianissima:{loot:{}},mr_luggs:{loot:{}},spooky:{loot:{}},bogmire:{loot:{}},biff_atlas:{loot:{}},miss_petunia:{loot:{}},nana:{loot:{}},slim_bankshot:{loot:{}},henry_and_orville:{henry_loot:{},orville_loot:{}},madame_clairvoya:{loot:{}},boolossus:{loot:{}},uncle_grimmly:{loot:{}},clockwork_soldiers:{pink_loot:{},blue_loot:{},green_loot:{}},jarvis:{loot:{}},sir_weston:{loot:{}},sue_pea:{loot:{}},vincent_van_gore:{loot:{}},king_boo:{loot:{red_diamond:1}}},ghosts:{gold_ghost:{health:1000,loot:{}},temper_terror:{health:1000,loot:{}},speedy_spirit:{health:1000,loot:{}},purple_puncher:{health:2000,loot:{}},flash:{health:2000,loot:{}},blue_twirler:{health:3000,loot:{}},blue_blaze:{health:3000,loot:{}},garbage_can_ghost:{health:4000,loot:{}},ceiling_surprise:{health:1,loot:{}},purple_bomber:{health:1,loot:{}},bowling_ghost:{health:1,loot:{}},grabbing_ghost:{health:1000,loot:{}},red_grabbing_ghost:{health:2000,loot:{}},mirror_ghost:{health:2000,loot:{}},cinema_ghost:{health:2000,loot:{}},ghost_guy:{health:2000,loot:{}},dancing_ghost_guy:{health:2000,loot:{}},mr_bones:{health:3000,loot:{}},waiter:{health:1000,loot:{}}}}
data modify storage luigis_mansion:data current_state.current_data.money_grabbed[0].money set from storage luigis_mansion:data current_state.current_data.money
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.money
function luigis_mansion:other/upgrade_path/root/1_money_total
data modify storage luigis_mansion:data current_state.current_data.money_grabbed[0].total set from storage luigis_mansion:data temp
data remove storage temp
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_1 set from storage luigis_mansion:data current_state.current_data.rooms.foyer
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_2 set from storage luigis_mansion:data current_state.current_data.rooms.small_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_3 set from storage luigis_mansion:data current_state.current_data.rooms.main_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_4 set from storage luigis_mansion:data current_state.current_data.rooms.main_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_5 set from storage luigis_mansion:data current_state.current_data.rooms.main_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_6 set from storage luigis_mansion:data current_state.current_data.rooms.main_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_7 set from storage luigis_mansion:data current_state.current_data.rooms.basement_stairs
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_8 set from storage luigis_mansion:data current_state.current_data.rooms.main_stairs
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_9 set from storage luigis_mansion:data current_state.current_data.rooms.hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_10 set from storage luigis_mansion:data current_state.current_data.rooms.hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_11 set from storage luigis_mansion:data current_state.current_data.rooms.hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_12 set from storage luigis_mansion:data current_state.current_data.rooms.hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_13 set from storage luigis_mansion:data current_state.current_data.rooms.hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_14.seen set from storage luigis_mansion:data current_state.current_data.rooms.hallway.seen
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_14.cleared set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1.cleared
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_15.seen set from storage luigis_mansion:data current_state.current_data.rooms.hallway.seen
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_15.cleared set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1.cleared
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_16 set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_17 set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_18 set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_2
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_19 set from storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_2
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_20 set from storage luigis_mansion:data current_state.current_data.rooms.basement_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_21 set from storage luigis_mansion:data current_state.current_data.rooms.basement_hallway
data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_22 set from storage luigis_mansion:data current_state.current_data.rooms.curved_hallway
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_money:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_1_money:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{small_hallway_money:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_2_money:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_jar_1:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_3_jar_1:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_jar_3:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_5_jar_1:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_jar_5:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_5_jar_3:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_jar_6:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_3_jar_3:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_gold_mouse:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_3_hallway_6_gold_mouse:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{basement_stairs_lamp_2:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_7_lamp_2:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{main_stairs_lamp:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_8_lamp:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_jar_1:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_9_jar_1:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_jar_3:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_9_jar_3:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_jar_4:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_9_jar_4:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_jar_6:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_13_jar_2:1b}
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_gold_mouse:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_9_hallway_15_gold_mouse:1b}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"bamboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"bootha"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"taboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boolicious"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"turboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boogie"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"peekaboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boodacious"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booregard"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"limbooger"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boohoo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"shamboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booris"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booigie"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booripedes"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boomerang"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booscaster"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"tamboorine"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booffant"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boolderdash"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boolivia"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"boonita"}] merge value {loot:{}}
data modify storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}] merge value {loot:{}}

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bamboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"bamboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bootha"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"bootha"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"taboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"taboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boolicious"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boolicious"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"turboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"turboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boogie"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boogie"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"peekaboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"peekaboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boodacious"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boodacious"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booregard"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booregard"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"limbooger"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"limbooger"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boohoo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boohoo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"shamboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"shamboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booris"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booris"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booigie"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booigie"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booripedes"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booripedes"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boomerang"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boomerang"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booscaster"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booscaster"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"tamboorine"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"tamboorine"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"booffant"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"booffant"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boolderdash"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boolderdash"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boolivia"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boolivia"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boonita"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"boonita"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}].room
execute if score #temp Time matches 1.. run function luigis_mansion:other/upgrade_path/root/1_boo_room_score
execute if score #temp Time matches 1.. store result storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}].room int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time