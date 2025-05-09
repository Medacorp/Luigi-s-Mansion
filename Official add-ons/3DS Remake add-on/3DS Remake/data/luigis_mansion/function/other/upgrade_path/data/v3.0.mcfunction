execute unless data storage luigis_mansion:data update_data{data_version:3} run function luigis_mansion:other/upgrade_path/data/v2.0
data modify storage luigis_mansion:data update_data merge value {mansion_id:{namespace:"luigis_mansion",id:"normal"},data_version:4,no_collect_animation:["luigis_mansion:gold_coin","luigis_mansion:bill","luigis_mansion:gold_bar","luigis_mansion:small_pearl","luigis_mansion:medium_pearl","luigis_mansion:big_pearl","luigis_mansion:poison_mushroom","luigis_mansion:heart","3ds_remake:super_mushroom"],drop_item_on_damage:{namespace:"luigis_mansion",id:"gold_coin"},portrait_ghosts:{neville:{vanish_time:-1,damage:{collision:0}},lydia:{vanish_time:-1,damage:{}},chauncey:{vanish_time:-1,damage:{attack:10}},floating_whirlindas:{male:{vanish_time:-1,damage:{collision:0}},female:{vanish_time:-1,damage:{collision:0}}},shivers:{vanish_time:-1,damage:{collision:0}},melody_pianissima:{vanish_time:-1,damage:{}},mr_luggs:{vanish_time:-1,damage:{collision:0}},spooky:{vanish_time:-1,damage:{attack:10}},bogmire:{vanish_time:-1,damage:{}},biff_atlas:{vanish_time:-1,damage:{attack:20}},miss_petunia:{vanish_time:-1,damage:{attack:10}},nana:{vanish_time:-1,damage:{collision:0,attack:10}},slim_bankshot:{vanish_time:-1,damage:{}},henry_and_orville:{henry:{vanish_time:-1,damage:{collision:10}},orville:{vanish_time:-1,damage:{collision:10}}},madame_clairvoya:{vanish_time:-1,damage:{}},boolossus:{damage:{collision:5,attack:10}},uncle_grimmly:{vanish_time:-1,damage:{collision:0}},clockwork_soldiers:{blue:{vanish_time:-1,damage:{attack:10}},green:{vanish_time:-1,damage:{attack:10}},pink:{vanish_time:-1,damage:{attack:10}}},jarvis:{vanish_time:-1,damage:{}},sir_weston:{vanish_time:-1,damage:{attack:10}},sue_pea:{vanish_time:-1,damage:{}},vincent_van_gore:{vanish_time:-1,damage:{}},king_boo:{damage:{},loot:{contents:{luigis_mansion:{king_boos_crown:1}}}}},ghosts:{gold_ghost:{vanish_time:120,damage:{collision:5,attack:10}},temper_terror:{vanish_time:120,damage:{collision:5,attack:10}},speedy_spirit:{vanish_time:-1,damage:{attack:10,loot:{drop_at_0:{contents:{luigis_mansion:{gold_coin:20,bill:5}}}}},purple_puncher:{vanish_time:120,damage:{collision:5,attack:10}},flash:{vanish_time:120,damage:{collision:5,attack:10}},blue_twirler:{vanish_time:180,damage:{collision:5,attack:10}},blue_blaze:{vanish_time:180,damage:{collision:5,attack:10}},garbage_can_ghost:{vanish_time:-1,damage:{collision:5,attack:5}},mr_bones:{vanish_time:-1,damage:{collision:5,attack:5}},ceiling_surprise:{vanish_time:-1,damage:{collision:0,attack:10},loot:{drop_at_0:{contents:{luigis_mansion:{small_heart:1}}}}},purple_bomber:{vanish_time:-1,damage:{collision:5,attack:10}},bowling_ghost:{vanish_time:-1,damage:{collision:5,attack:10}},grabbing_ghost:{vanish_time:-1,damage:{collision:5,attack:5}},red_grabbing_ghost:{vanish_time:-1,damage:{collision:5,attack:5}},mirror_ghost:{vanish_time:-1,damage:{collision:5,attack:5}},cinema_ghost:{vanish_time:-1,damage:{collision:5,attack:5}},ghost_guy:{vanish_time:-1,damage:{collision:5,attack:10}},dancing_ghost_guy:{vanish_time:-1,damage:{collision:5,attack:10}},waiter:{vanish_time:-1,damage:{collision:0}},blue_mouse:{damage:{collision:5}},purple_mouse:{damage:{collision:5}},gold_mouse:{damage:{},loot:{contents:{luigis_mansion:{gold_coin:30,bill:10}}}},purple_bat:{damage:{collision:5}},yellow_bat:{damage:{collision:5}},black_bogmire:{small_loot:{},big_loot:{},small_damage:{collision:5},big_damage:{collision:5}},pink_flying_fish:{damage:{collision:5}},green_flying_fish:{damage:{collision:5}},spark:{damage:{collision:10}},shining_ghost:{damage:{collision:5},loot:{}},fire_elemental_ghost:{speed:1,damage:{collision:10},loot:{}},water_elemental_ghost:{speed:1,damage:{collision:10},loot:{}},ice_elemental_ghost:{speed:1,damage:{collision:10},loot:{}},haunted_teddy_bear:{damage:{collision:5}},haunted_book:{damage:{collision:5}},haunted_frying_pan:{damage:{collision:5}},haunted_plate:{damage:{collision:5}},haunted_clown_doll:{damage:{collision:5}},haunted_jar:{damage:{collision:5}},haunted_music_sheet:{damage:{collision:5}}},fake_door:{damage:{attack:10}}}}
execute if data storage luigis_mansion:data update_data{can_clear_hidden:1b} run data modify storage luigis_mansion:data update_data.mansion_id set value {namespace:"luigis_mansion",id:"hidden"}
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.health set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.health
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.health set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.health
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.health
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.max_health set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.max_health
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.max_health set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.max_health
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.max_health
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.speed set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.speed
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.speed set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.speed
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.speed
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.flee_speed set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.flee_speed
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.flee_speed set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.flee_speed
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.flee_speed
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.loot set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.loot
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.loot set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.loot
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.loot
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.male.top_vacuum_damage set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.top_vacuum_damage
data modify storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.female.top_vacuum_damage set from storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.top_vacuum_damage
data remove storage luigis_mansion:data update_data.portrait_ghosts.floating_whirlindas.top_vacuum_damage
data modify storage luigis_mansion:data update_data.new_ghosts.luigis_mansion set from storage luigis_mansion:data update_data.portrait_ghosts
data modify storage luigis_mansion:data update_data.portrait_ghosts set from storage luigis_mansion:data update_data.new_ghosts
data remove storage luigis_mansion:data update_data.new_ghosts
data modify storage luigis_mansion:data update_data.new_ghosts.luigis_mansion set from storage luigis_mansion:data update_data.ghosts
data modify storage luigis_mansion:data update_data.ghosts set from storage luigis_mansion:data update_data.new_ghosts
data remove storage luigis_mansion:data update_data.new_ghosts
data modify storage luigis_mansion:data update_data.old_dead_players set from storage luigis_mansion:data update_data.dead_players
data modify storage luigis_mansion:data update_data.dead_players set value []
execute if data storage luigis_mansion:data update_data.dead_players[0] run function luigis_mansion:other/upgrade_path/change_data/dead_players
data remove storage luigis_mansion:data update_data.old_dead_players
execute if data storage luigis_mansion:data update_data.technical_data{released_boos_call:1b} run data modify storage luigis_mansion:data update_data.obtained_items merge value {boo_radar:1b}
execute if data storage luigis_mansion:data update_data.technical_data{telephone_3:1b} run data modify storage luigis_mansion:data update_data.technical_data merge value {telephone_room_blackout:1b}
execute if data storage luigis_mansion:data update_data.boos[{}] run data modify storage luigis_mansion:data update_data.boos[] merge value {damage:{collision:5,attack:10},message:1,can_attack:0b}
execute if data storage luigis_mansion:data update_data.boos[{name:"bamboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"bamboo"}] merge value {name:{namespace:"luigis_mansion",id:"bamboo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"bootha"}] run data modify storage luigis_mansion:data update_data.boos[{name:"bootha"}] merge value {name:{namespace:"luigis_mansion",id:"bootha"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"gameboo_advance"}] run data modify storage luigis_mansion:data update_data.boos[{name:"gameboo_advance"}] merge value {name:{namespace:"luigis_mansion",id:"gameboo_advance"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"taboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"taboo"}] merge value {name:{namespace:"luigis_mansion",id:"taboo"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"boolicious"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boolicious"}] merge value {name:{namespace:"luigis_mansion",id:"boolicious"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"turboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"turboo"}] merge value {name:{namespace:"luigis_mansion",id:"turboo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boo_la_la"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boo_la_la"}] merge value {name:{namespace:"luigis_mansion",id:"boo_la_la"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"gameboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"gameboo"}] merge value {name:{namespace:"luigis_mansion",id:"gameboo"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"kung_boo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"kung_boo"}] merge value {name:{namespace:"luigis_mansion",id:"kung_boo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boogie"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boogie"}] merge value {name:{namespace:"luigis_mansion",id:"boogie"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"peekaboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"peekaboo"}] merge value {name:{namespace:"luigis_mansion",id:"peekaboo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"gumboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"gumboo"}] merge value {name:{namespace:"luigis_mansion",id:"gumboo"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"boomeo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boomeo"}] merge value {name:{namespace:"luigis_mansion",id:"boomeo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boodacious"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boodacious"}] merge value {name:{namespace:"luigis_mansion",id:"boodacious"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"booligan"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booligan"}] merge value {name:{namespace:"luigis_mansion",id:"booligan"}}
#ADDED THIS LINE TO CORRECTLY CONVERT BOOLLDOG
execute if data storage luigis_mansion:data update_data.boos[{name:"boolldog"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boolldog"}] merge value {name:{namespace:"3ds_remake",id:"boolldog"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"booregard"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booregard"}] merge value {name:{namespace:"luigis_mansion",id:"booregard"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"mr_boojangles"}] run data modify storage luigis_mansion:data update_data.boos[{name:"mr_boojangles"}] merge value {name:{namespace:"luigis_mansion",id:"mr_boojangles"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"limbooger"}] run data modify storage luigis_mansion:data update_data.boos[{name:"limbooger"}] merge value {name:{namespace:"luigis_mansion",id:"limbooger"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"boonswoggle"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boonswoggle"}] merge value {name:{namespace:"luigis_mansion",id:"boonswoggle"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boohoo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boohoo"}] merge value {name:{namespace:"luigis_mansion",id:"boohoo"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"shamboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"shamboo"}] merge value {name:{namespace:"luigis_mansion",id:"shamboo"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"booris"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booris"}] merge value {name:{namespace:"luigis_mansion",id:"booris"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"booigi"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booigi"}] merge value {name:{namespace:"luigis_mansion",id:"booigi"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"little_boo_peep"}] run data modify storage luigis_mansion:data update_data.boos[{name:"little_boo_peep"}] merge value {name:{namespace:"luigis_mansion",id:"little_boo_peep"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boo_b_hatch"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boo_b_hatch"}] merge value {name:{namespace:"luigis_mansion",id:"boo_b_hatch"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"booripedes"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booripedes"}] merge value {name:{namespace:"luigis_mansion",id:"booripedes"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boomerang"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boomerang"}] merge value {name:{namespace:"luigis_mansion",id:"boomerang"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"booscaster"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booscaster"}] merge value {name:{namespace:"luigis_mansion",id:"booscaster"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"underboo"}] run data modify storage luigis_mansion:data update_data.boos[{name:"underboo"}] merge value {name:{namespace:"luigis_mansion",id:"underboo"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"tamboorine"}] run data modify storage luigis_mansion:data update_data.boos[{name:"tamboorine"}] merge value {name:{namespace:"luigis_mansion",id:"tamboorine"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"booffant"}] run data modify storage luigis_mansion:data update_data.boos[{name:"booffant"}] merge value {name:{namespace:"luigis_mansion",id:"booffant"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boolderdash"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boolderdash"}] merge value {name:{namespace:"luigis_mansion",id:"boolderdash"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"boolivia"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boolivia"}] merge value {name:{namespace:"luigis_mansion",id:"boolivia"},can_attack:1b}
execute if data storage luigis_mansion:data update_data.boos[{name:"boonita"}] run data modify storage luigis_mansion:data update_data.boos[{name:"boonita"}] merge value {name:{namespace:"luigis_mansion",id:"boonita"}}
execute if data storage luigis_mansion:data update_data.boos[{name:"bootique"}] run data modify storage luigis_mansion:data update_data.boos[{name:"bootique"}] merge value {name:{namespace:"luigis_mansion",id:"bootique"}}
data modify storage luigis_mansion:data obtained_keys set from storage luigis_mansion:data update_data.obtained_keys
data modify storage luigis_mansion:data update_data.obtained_keys set value []
execute if data storage luigis_mansion:data obtained_keys{parlor:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "parlor"
execute if data storage luigis_mansion:data obtained_keys{anteroom:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "anteroom"
execute if data storage luigis_mansion:data obtained_keys{hallway_2:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_2"
execute if data storage luigis_mansion:data obtained_keys{master_bedroom:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "master_bedroom"
execute if data storage luigis_mansion:data obtained_keys{nursery:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "nursery"
execute if data storage luigis_mansion:data obtained_keys{hallway_3:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_3"
execute if data storage luigis_mansion:data obtained_keys{ball_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "ball_room"
execute if data storage luigis_mansion:data obtained_keys{storage_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "storage_room"
execute if data storage luigis_mansion:data obtained_keys{fortune_tellers_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "fortune_tellers_room"
execute if data storage luigis_mansion:data obtained_keys{laundry_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "laundry_room"
execute if data storage luigis_mansion:data obtained_keys{conservatory:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "conservatory"
execute if data storage luigis_mansion:data obtained_keys{dining_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "dining_room"
execute if data storage luigis_mansion:data obtained_keys{courtyard:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "courtyard"
execute if data storage luigis_mansion:data obtained_keys{rec_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "rec_room"
execute if data storage luigis_mansion:data obtained_keys{hallway_8:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_8"
execute if data storage luigis_mansion:data obtained_keys{billiards_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "billiards_room"
execute if data storage luigis_mansion:data obtained_keys{the_twins_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "the_twins_room"
execute if data storage luigis_mansion:data obtained_keys{safari_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "safari_room"
execute if data storage luigis_mansion:data obtained_keys{balcony_2:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "balcony_2"
execute if data storage luigis_mansion:data obtained_keys{hallway_18:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_18"
execute if data storage luigis_mansion:data obtained_keys{breaker_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "breaker_room"
execute if data storage luigis_mansion:data obtained_keys{cellar:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "cellar"
execute if data storage luigis_mansion:data obtained_keys{clockwork_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "clockwork_room"
execute if data storage luigis_mansion:data obtained_keys{armory:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "armory"
execute if data storage luigis_mansion:data obtained_keys{pipe_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "pipe_room"
execute if data storage luigis_mansion:data obtained_keys{cold_storage:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "cold_storage"
execute if data storage luigis_mansion:data obtained_keys{sitting_room:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "sitting_room"
execute if data storage luigis_mansion:data obtained_keys{the_artists_studio:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "the_artists_studio"
execute if data storage luigis_mansion:data obtained_keys{secret_altar:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "secret_altar"
data remove storage luigis_mansion:data obtained_keys
data modify storage luigis_mansion:data used_keys set from storage luigis_mansion:data update_data.used_keys
data modify storage luigis_mansion:data update_data.used_keys set value []
execute if data storage luigis_mansion:data used_keys{parlor:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "parlor"
execute if data storage luigis_mansion:data used_keys{anteroom:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "anteroom"
execute if data storage luigis_mansion:data used_keys{hallway_2:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_2"
execute if data storage luigis_mansion:data used_keys{master_bedroom:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "master_bedroom"
execute if data storage luigis_mansion:data used_keys{nursery:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "nursery"
execute if data storage luigis_mansion:data used_keys{hallway_3:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_3"
execute if data storage luigis_mansion:data used_keys{ball_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "ball_room"
execute if data storage luigis_mansion:data used_keys{storage_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "storage_room"
execute if data storage luigis_mansion:data used_keys{fortune_tellers_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "fortune_tellers_room"
execute if data storage luigis_mansion:data used_keys{laundry_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "laundry_room"
execute if data storage luigis_mansion:data used_keys{conservatory:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "conservatory"
execute if data storage luigis_mansion:data used_keys{dining_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "dining_room"
execute if data storage luigis_mansion:data used_keys{courtyard:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "courtyard"
execute if data storage luigis_mansion:data used_keys{rec_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "rec_room"
execute if data storage luigis_mansion:data used_keys{hallway_8:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_8"
execute if data storage luigis_mansion:data used_keys{billiards_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "billiards_room"
execute if data storage luigis_mansion:data used_keys{the_twins_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "the_twins_room"
execute if data storage luigis_mansion:data used_keys{safari_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "safari_room"
execute if data storage luigis_mansion:data used_keys{balcony_2:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "balcony_2"
execute if data storage luigis_mansion:data used_keys{hallway_18:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_18"
execute if data storage luigis_mansion:data used_keys{breaker_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "breaker_room"
execute if data storage luigis_mansion:data used_keys{cellar:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "cellar"
execute if data storage luigis_mansion:data used_keys{clockwork_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "clockwork_room"
execute if data storage luigis_mansion:data used_keys{armory:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "armory"
execute if data storage luigis_mansion:data used_keys{pipe_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "pipe_room"
execute if data storage luigis_mansion:data used_keys{cold_storage:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "cold_storage"
execute if data storage luigis_mansion:data used_keys{sitting_room:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "sitting_room"
execute if data storage luigis_mansion:data used_keys{the_artists_studio:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "the_artists_studio"
execute if data storage luigis_mansion:data used_keys{secret_altar:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "secret_altar"
data remove storage luigis_mansion:data used_keys
data modify storage luigis_mansion:data money_spawned set from storage luigis_mansion:data update_data.money_spawned
data modify storage luigis_mansion:data update_data.money_spawned set value []
execute if data storage luigis_mansion:data money_spawned{foyer_chandelier:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "foyer_inside_lantern_chandelier"
execute if data storage luigis_mansion:data money_spawned{foyer_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "foyer_inside_lantern"
execute if data storage luigis_mansion:data money_spawned{hallway_1_money:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_1_money"
execute if data storage luigis_mansion:data money_spawned{parlor_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_china_cabinet"
execute if data storage luigis_mansion:data money_spawned{parlor_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_chained_chandelier"
execute if data storage luigis_mansion:data money_spawned{parlor_money:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_money"
execute if data storage luigis_mansion:data money_spawned{parlor_table_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_bookcase"
execute if data storage luigis_mansion:data money_spawned{parlor_table_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_nightstand"
execute if data storage luigis_mansion:data money_spawned{anteroom_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "anteroom_orblight_chandelier_1"
execute if data storage luigis_mansion:data money_spawned{anteroom_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "anteroom_orblight_chandelier_2"
execute if data storage luigis_mansion:data money_spawned{anteroom_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "anteroom_nightstand_mounted_blue_flower_pot_1"
execute if data storage luigis_mansion:data money_spawned{anteroom_table_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "anteroom_nightstand_mounted_blue_flower_pot_2"
execute if data storage luigis_mansion:data money_spawned{wardrobe_room_closet_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "wardrobe_room_wardrobe_2"
execute if data storage luigis_mansion:data money_spawned{wardrobe_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "wardrobe_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{balcony_1_plant_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_1_potted_dying_brown_flowers"
execute if data storage luigis_mansion:data money_spawned{balcony_1_plant_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_1_potted_fern"
execute if data storage luigis_mansion:data money_spawned{balcony_1_plant_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_1_potted_dying_blue_flower"
execute if data storage luigis_mansion:data money_spawned{balcony_1_plant_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_1_potted_stem"
execute if data storage luigis_mansion:data money_spawned{hallway_2_money:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_2_money"
execute if data storage luigis_mansion:data money_spawned{study_book_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_book_1"
execute if data storage luigis_mansion:data money_spawned{study_book_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_book_1"
execute if data storage luigis_mansion:data money_spawned{study_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{study_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_mushroom_chandelier"
execute if data storage luigis_mansion:data money_spawned{study_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{master_bedroom_fan:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "master_bedroom_fan"
execute if data storage luigis_mansion:data money_spawned{master_bedroom_plant:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "master_bedroom_column_mounted_brown_potted_fern"
execute if data storage luigis_mansion:data money_spawned{master_bedroom_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "master_bedroom_nightstand"
execute if data storage luigis_mansion:data money_spawned{master_bedroom_table_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "master_bedroom_master_dresser"
execute if data storage luigis_mansion:data money_spawned{nursery_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nursery_stained_glass_lamp"
execute if data storage luigis_mansion:data money_spawned{nursery_money:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nursery_money"
execute if data storage luigis_mansion:data money_spawned{nursery_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nursery_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{hallway_3_jar_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_3_ringed_vase_1"
execute if data storage luigis_mansion:data money_spawned{hallway_3_jar_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_3_ringed_vase_3"
execute if data storage luigis_mansion:data money_spawned{hallway_3_hallway_6_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_3_hallway_6_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{hallway_5_jar_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_5_ringed_vase_1"
execute if data storage luigis_mansion:data money_spawned{hallway_5_jar_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_5_ringed_vase_2"
execute if data storage luigis_mansion:data money_spawned{hallway_7_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_7_hook_suspended_lantern"
execute if data storage luigis_mansion:data money_spawned{ball_room_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ball_room_bejeweled_chandelier_1"
execute if data storage luigis_mansion:data money_spawned{ball_room_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ball_room_bejeweled_chandelier_2"
execute if data storage luigis_mansion:data money_spawned{storage_room_bucket:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "storage_room_metal_bucket"
execute if data storage luigis_mansion:data money_spawned{storage_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "storage_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{washroom_1_cabinet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "washroom_1_medicine_cabinet"
execute if data storage luigis_mansion:data money_spawned{washroom_1_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "washroom_1_inside_lantern"
execute if data storage luigis_mansion:data money_spawned{fortune_tellers_room_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "fortune_tellers_room_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{fortune_tellers_room_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "fortune_tellers_room_wooden_cabinet_mounted_wooden_colorful_candelabra_1"
execute if data storage luigis_mansion:data money_spawned{fortune_tellers_room_table_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "fortune_tellers_room_wooden_cabinet_mounted_wooden_colorful_candelabra_2"
execute if data storage luigis_mansion:data money_spawned{laundry_room_bucket:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "laundry_room_metal_bucket"
execute if data storage luigis_mansion:data money_spawned{laundry_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "laundry_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{laundry_room_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "laundry_room_cleaning_supply_cabinet"
execute if data storage luigis_mansion:data money_spawned{laundry_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "laundry_room_metal_encased_lamp"
execute if data storage luigis_mansion:data money_spawned{butlers_room_bucket:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "butlers_room_metal_bucket"
execute if data storage luigis_mansion:data money_spawned{butlers_room_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "butlers_room_tool_cabinet"
execute if data storage luigis_mansion:data money_spawned{butlers_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "butlers_room_chain_suspended_lamp"
execute if data storage luigis_mansion:data money_spawned{hidden_room_chest_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_treasure_chest_3"
execute if data storage luigis_mansion:data money_spawned{hidden_room_chest_6:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_treasure_chest_6"
execute if data storage luigis_mansion:data money_spawned{hidden_room_chest_8:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{hidden_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_bejeweled_chandelier"
execute if data storage luigis_mansion:data money_spawned{hidden_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{hidden_room_trophy_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_red_trophy_1"
execute if data storage luigis_mansion:data money_spawned{hidden_room_trophy_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hidden_room_red_trophy_2"
execute if data storage luigis_mansion:data money_spawned{conservatory_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "conservatory_large_cabinet_mounted_potted_fern"
execute if data storage luigis_mansion:data money_spawned{conservatory_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "conservatory_inversed_half_orb_lamp"
execute if data storage luigis_mansion:data money_spawned{conservatory_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "conservatory_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{dining_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "dining_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{dining_room_closet_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "dining_room_china_cabinet_2"
execute if data storage luigis_mansion:data money_spawned{dining_room_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "dining_room_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{dining_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "dining_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{kitchen_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_dish_cabinet"
execute if data storage luigis_mansion:data money_spawned{kitchen_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{kitchen_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_cone_lamp_2"
execute if data storage luigis_mansion:data money_spawned{kitchen_oven:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_oven"
execute if data storage luigis_mansion:data money_spawned{kitchen_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{boneyard_plant:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "boneyard_giant_flower"
execute if data storage luigis_mansion:data money_spawned{boneyard_plant:1b} run data modify storage luigis_mansion:data update_data.technical_data.watered_boneyard_plant_3 set value 1b
execute if data storage luigis_mansion:data money_spawned{graveyard_rain_pipe:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "graveyard_rain_pipe"
execute if data storage luigis_mansion:data money_spawned{courtyard_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "courtyard_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{courtyard_statue_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "courtyard_vase_carrying_woman_statue"
execute if data storage luigis_mansion:data money_spawned{rec_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "rec_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{rec_room_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "rec_room_caged_lamp_1"
execute if data storage luigis_mansion:data money_spawned{rec_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "rec_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{rec_room_table:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "rec_room_workout_cabinet"
execute if data storage luigis_mansion:data money_spawned{hallway_8_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_8_hook_suspended_stained_glass_lamp"
execute if data storage luigis_mansion:data money_spawned{tea_room_cheese_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "tea_room_cheese_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{tea_room_drawer_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "tea_room_giant_cabinet_drawers_2"
execute if data storage luigis_mansion:data money_spawned{tea_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "tea_room_crystal_chandelier"
execute if data storage luigis_mansion:data money_spawned{tea_room_random_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "tea_room_random_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{hallway_9_jar_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_9_ringed_vase_1"
execute if data storage luigis_mansion:data money_spawned{hallway_9_jar_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_9_ringed_vase_3"
execute if data storage luigis_mansion:data money_spawned{hallway_9_jar_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_9_ringed_vase_4"
execute if data storage luigis_mansion:data money_spawned{hallway_9_hallway_15_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_9_hallway_15_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{hallway_13_jar_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "hallway_13_ringed_vase_2"
execute if data storage luigis_mansion:data money_spawned{washroom_2_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "washroom_2_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{washroom_2_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "washroom_2_inside_lantern"
execute if data storage luigis_mansion:data money_spawned{nanas_room_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nanas_room_stacked_drawer_cabinet"
execute if data storage luigis_mansion:data money_spawned{nanas_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nanas_room_tulip_chandelier"
execute if data storage luigis_mansion:data money_spawned{nanas_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "nanas_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{astral_hall_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "astral_hall_astral_chandelier"
execute if data storage luigis_mansion:data money_spawned{astral_hall_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "astral_hall_astral_cabinet_1"
execute if data storage luigis_mansion:data money_spawned{observatory_table:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "observatory_cabinet_mounted_planet"
execute if data storage luigis_mansion:data money_spawned{billiards_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "billiards_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{billiards_room_fan:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "billiards_room_fan"
execute if data storage luigis_mansion:data money_spawned{billiards_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "billiards_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{billiards_room_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "billiards_room_nightstand_1"
execute if data storage luigis_mansion:data money_spawned{billiards_room_table_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "billiards_room_nightstand_2"
execute if data storage luigis_mansion:data money_spawned{projection_room_closet:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "projection_room_film_cabinet"
execute if data storage luigis_mansion:data money_spawned{projection_room_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "projection_room_film_set_lamp_2"
execute if data storage luigis_mansion:data money_spawned{the_twins_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "the_twins_room_star_lamp"
execute if data storage luigis_mansion:data money_spawned{the_twins_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "the_twins_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{the_twins_room_table_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "the_twins_room_cabinet_mounted_globe"
execute if data storage luigis_mansion:data money_spawned{safari_room_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "safari_room_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{safari_room_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "safari_room_leopard_skin_decorated_lamp_1"
execute if data storage luigis_mansion:data money_spawned{safari_room_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "safari_room_leopard_skin_decorated_lamp_2"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_stone_bowl_potted_fern_1"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_dying_blue_flower_1"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_duo_potted_dying_pink_and_brown_flowers"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_duo_potted_dying_pink_and_brown_flowers"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_5:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_stone_bowl_potted_fern_2"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_7:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_dying_blue_flower_3"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_9:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_dying_blue_flower_4"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_10:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_fern_1"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_11:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_fern_2"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_12:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_stem_2"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_13:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_dying_blue_flower_5"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_14:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_stone_bowl_potted_fern_3"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_15:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_potted_dying_blue_flower_6"
execute if data storage luigis_mansion:data money_spawned{balcony_2_plant_16:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_stone_bowl_potted_fern_4"
execute if data storage luigis_mansion:data money_spawned{telephone_room_chest_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "telephone_room_wooden_chest_3"
execute if data storage luigis_mansion:data money_spawned{telephone_room_chest_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "telephone_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{telephone_room_closet_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "telephone_room_wooden_cabinet_2"
execute if data storage luigis_mansion:data money_spawned{telephone_room_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "telephone_room_half_orb_lamp_1"
execute if data storage luigis_mansion:data money_spawned{breaker_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "breaker_room_uncovered_lightbulb"
execute if data storage luigis_mansion:data money_spawned{breaker_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "breaker_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_1"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_contents_old_junk_1"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_contents_trophies_1"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_contents_vases_2"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_5:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_contents_old_junk_2"
execute if data storage luigis_mansion:data money_spawned{cellar_shelf_6:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_shelf_contents_trophies_2"
execute if data storage luigis_mansion:data money_spawned{cellar_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{clockwork_room_lamp_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "clockwork_room_hook_suspended_encased_lamp_1"
execute if data storage luigis_mansion:data money_spawned{clockwork_room_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "clockwork_room_hook_suspended_encased_lamp_2"
execute if data storage luigis_mansion:data money_spawned{armory_chest_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "armory_metal_chest_1"
execute if data storage luigis_mansion:data money_spawned{armory_chest_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "armory_metal_chest_4"
execute if data storage luigis_mansion:data money_spawned{armory_chest_5:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "armory_metal_chest_5"
execute if data storage luigis_mansion:data money_spawned{armory_chest_6:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "armory_metal_chest_6"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_terracotta_vase"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_orange_stained_vase"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_small_trophy"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_5:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_rose_painted_vase"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_7:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_metal_vase"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_jar_8:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_porcelain_vase"
execute if data storage luigis_mansion:data money_spawned{ceramics_studio_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "ceramics_studio_long_hook_suspended_encased_lamp"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_1"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_2"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_3"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_4"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_7:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_7"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_8:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_8"
execute if data storage luigis_mansion:data money_spawned{sealed_room_chest_9:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_treasure_chest_9"
execute if data storage luigis_mansion:data money_spawned{sealed_room_gold_mouse:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_gold_mouse"
execute if data storage luigis_mansion:data money_spawned{sealed_room_lamp:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_bejeweled_chandelier"
execute if data storage luigis_mansion:data money_spawned{sealed_room_speedy_spirit:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_speedy_spirit"
execute if data storage luigis_mansion:data money_spawned{sealed_room_trophy_1:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_blank_trophy_1"
execute if data storage luigis_mansion:data money_spawned{sealed_room_trophy_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_emblemized_trophy_1"
execute if data storage luigis_mansion:data money_spawned{sealed_room_trophy_3:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_emblemized_trophy_2"
execute if data storage luigis_mansion:data money_spawned{sealed_room_trophy_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_blank_trophy_2"
execute if data storage luigis_mansion:data money_spawned{pipe_room_bucket:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "pipe_room_metal_bucket"
execute if data storage luigis_mansion:data money_spawned{sitting_room_plant:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "sitting_room_column_mounted_blue_potted_fern"
execute if data storage luigis_mansion:data money_spawned{guest_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "guest_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{guest_room_plant:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "guest_room_column_mounted_blue_potted_fern"
execute if data storage luigis_mansion:data money_spawned{guest_room_table_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "guest_room_nightstand"
execute if data storage luigis_mansion:data money_spawned{secret_altar_candle_4:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "secret_altar_stone_bowl_candelabra_3"
execute if data storage luigis_mansion:data money_spawned{secret_altar_candle_5:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "secret_altar_stone_bowl_candelabra_4"
execute if data storage luigis_mansion:data money_spawned{secret_altar_lamp_2:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "secret_altar_altar_chandelier_2"
data remove storage luigis_mansion:data money_spawned
execute if data storage luigis_mansion:data update_data{obtained_keys:["anteroom"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "parlor_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["master_bedroom"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["nursery"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "master_bedroom_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["hallway_3"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "nursery_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["storage_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "ball_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data.obtained_items{fire_element_medal:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "mirror_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["conservatory"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "butlers_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["dining_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "conservatory_room_clear_chest"
execute if data storage luigis_mansion:data update_data.obtained_items{water_element_medal:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["courtyard"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "graveyard_room_clear_chest"
execute if data storage luigis_mansion:data update_data.obtained_items{ice_element_medal:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "tea_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["billiards_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "bathroom_2_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["the_twins_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "nanas_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data.obtained_items{marios_glove:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "projection_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data.obtained_items{marios_shoe:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "the_twins_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["safari_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "fortune_tellers_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["balcony_2"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "safari_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["hallway_18"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "balcony_2_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["breaker_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "wardrobe_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["cellar"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "breaker_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["clockwork_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "cellar_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["armory"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "roof_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["sitting_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "sealed_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["pipe_room"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "armory_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["cold_storage"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "pipe_room_room_clear_chest"
execute if data storage luigis_mansion:data update_data{obtained_keys:["the_artists_studio"]} run data modify storage luigis_mansion:data update_data.money_spawned append value "cold_storage_room_clear_chest"
data modify storage luigis_mansion:data ghosts_caught set from storage luigis_mansion:data update_data.ghosts_caught
function luigis_mansion:other/upgrade_path/change_data/ghosts_caught
data modify storage luigis_mansion:data update_data.ghosts_caught set from storage luigis_mansion:data new_ghosts_caught
data remove storage luigis_mansion:data ghosts_caught
data remove storage luigis_mansion:data new_ghosts_caught