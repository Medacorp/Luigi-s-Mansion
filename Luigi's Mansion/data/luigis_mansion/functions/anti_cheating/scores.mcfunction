scoreboard objectives add ActionTime dummy
scoreboard objectives add Angle dummy
scoreboard objectives add AnimationProg dummy
scoreboard objectives add BannanaDropTime dummy
scoreboard objectives add Boos dummy
scoreboard objectives add BooTimer dummy
scoreboard objectives add ChangedMansion dummy
scoreboard objectives add ClairvoyaChoice trigger
scoreboard objectives add ClairvoyaSpoke dummy
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add DamagePitch dummy
scoreboard objectives add DamagePitchTimer dummy
scoreboard objectives add Dialog dummy
scoreboard objectives add Distance dummy
scoreboard objectives add Element dummy
scoreboard objectives add ElementalNr dummy
scoreboard objectives add EGaddGallChoice trigger
scoreboard objectives add EGaddGPRChoice trigger
scoreboard objectives add EGaddLabChoice trigger
scoreboard objectives add EGaddTrainChoice trigger
scoreboard objectives add FakeDoors dummy
scoreboard objectives add FlashlightTime dummy
scoreboard objectives add FlashlightType trigger
scoreboard objectives add FlyTime dummy
scoreboard objectives add Food food
scoreboard objectives add ForcedDamage dummy
scoreboard objectives add GBHCall dummy
scoreboard objectives add GBHChoice trigger
scoreboard objectives add GBHRadar dummy
scoreboard objectives add GBHWait dummy
scoreboard objectives add GhostCaught dummy
scoreboard objectives add GhostCount dummy
scoreboard objectives add GhostNr dummy
scoreboard objectives add GhostGuyCouple dummy
scoreboard objectives add RoomNoise dummy
scoreboard objectives add Health dummy
scoreboard objectives add HideTime dummy
scoreboard objectives add HomeRot dummy
scoreboard objectives add HomeRotX dummy
scoreboard objectives add HomeRotY dummy
scoreboard objectives add HomeX dummy
scoreboard objectives add HomeY dummy
scoreboard objectives add HomeZ dummy
scoreboard objectives add HurtTime dummy
scoreboard objectives add ID dummy
scoreboard objectives add Invulnerable dummy
scoreboard objectives add JarvisChoice trigger
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add JumpHeight dummy
scoreboard objectives add Keys dummy
scoreboard objectives add KillerID dummy
scoreboard objectives add LastFloor dummy
scoreboard objectives add LastHealth dummy
scoreboard objectives add LastRoom dummy
scoreboard objectives add LastTotalDamage dummy
scoreboard objectives add LightStep dummy
scoreboard objectives add LightX dummy
scoreboard objectives add LightY dummy
scoreboard objectives add LightZ dummy
scoreboard objectives add Loaded dummy
scoreboard objectives add LoadedChunks dummy
scoreboard objectives add Offline minecraft.custom:minecraft.leave_game
scoreboard objectives add PunchingBag dummy
scoreboard objectives add MansionChoice trigger
scoreboard objectives add MaxHealth dummy
scoreboard objectives add MelodyChoice trigger
scoreboard objectives add MirrorX dummy
scoreboard objectives add MirrorZ dummy
scoreboard objectives add Money dummy
scoreboard objectives add Move dummy
scoreboard objectives add Music dummy
scoreboard objectives add MusicType dummy
scoreboard objectives add PassiveNr dummy
scoreboard objectives add PathStep dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PrevHealth dummy
scoreboard objectives add PrevMusicType dummy
scoreboard objectives add PrevRoom dummy
scoreboard objectives add PrevTotalDamage dummy
scoreboard objectives add Pull dummy
scoreboard objectives add PullStrength dummy
scoreboard objectives add ReflectionNr dummy
scoreboard objectives add ResetChoice trigger
scoreboard objectives add ResetMansion dummy
scoreboard objectives add Room dummy
scoreboard objectives add RoomSection dummy
scoreboard objectives add Run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Search dummy
scoreboard objectives add Searched dummy
scoreboard objectives add Searching dummy
scoreboard objectives add Selected dummy
scoreboard objectives add Shrunk dummy
scoreboard objectives add ShrunkNr dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add SneakTime dummy
scoreboard objectives add Sound dummy
scoreboard objectives add SpawnTime dummy
scoreboard objectives add Steps dummy
scoreboard objectives add StunTime dummy
scoreboard objectives add Talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add TargetX dummy
scoreboard objectives add TargetY dummy
scoreboard objectives add TargetZ dummy
scoreboard objectives add Ticking dummy
scoreboard objectives add Time dummy
scoreboard objectives add Toad1Choice trigger
scoreboard objectives add Toad2Choice trigger
scoreboard objectives add Toad3Choice trigger
scoreboard objectives add Toad4Choice trigger
scoreboard objectives add Toad5Choice trigger
scoreboard objectives add TotalDamage dummy
scoreboard objectives add Totals dummy
scoreboard objectives add Turn dummy
scoreboard objectives add TwinsChoice trigger
scoreboard objectives add UseItem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Vacuumables dummy
scoreboard objectives add VacuumTime dummy
scoreboard objectives add Variant dummy
scoreboard objectives add VulnerableTime dummy
scoreboard objectives add WaitTime dummy
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Wave dummy
scoreboard objectives add Wool dummy

scoreboard players set #-1 Constants -1
scoreboard players set #2 Constants 2
scoreboard players set #5 Constants 5
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #30 Constants 30
scoreboard players set #50 Constants 50
scoreboard players set #100 Constants 100
scoreboard players set #200 Constants 200
scoreboard players set #500 Constants 500
scoreboard players set #800 Constants 800
scoreboard players set #1000 Constants 1000
scoreboard players set #2000 Constants 2000
scoreboard players set #20000 Constants 20000

scoreboard objectives setdisplay list Health

execute unless score #loaded_exterior Selected matches -2147483648.. run scoreboard players set #loaded_exterior Selected 0
execute unless score #mansion_type Selected matches -2147483648.. run scoreboard players set #mansion_type Selected 0
execute unless score #mansion_data_index Selected matches -2147483648.. run data modify storage luigis_mansion:data {} merge value {ghost_nr:0,entered_mansion:0b,used_parlor_key:0b,obtained_parlor_key:0b,found_e_gadd:0b,rooms:{underground_lab:{seen:0b,cleared:0b},training_room:{seen:0b,cleared:0b},ghost_portrifcationizer_room:{seen:0b,cleared:0b},gallery:{seen:0b,cleared:0b}},high_scores:[],saved_state:{mansion_data:[],ghosts_caught:[]},current_state:{mansion_data:[],ghosts_caught:[],current_data:{data_index:0,boo_counter:0,dead_players:[],technical_data:{},used_keys:{},obtained_keys:{},obtained_items:{},money_spawned:{},rooms:{foyer:{seen:1b,cleared:0b},hallway_1:{seen:1b,cleared:0b},parlor:{seen:1b,cleared:0b},anteroom:{seen:0b,cleared:0b},wardrobe_room:{seen:0b,cleared:0b},balcony_1:{seen:0b,cleared:0b},hallway_2:{seen:0b,cleared:0b},study:{seen:0b,cleared:0b},master_bedroom:{seen:0b,cleared:0b},nursery:{seen:0b,cleared:0b},hallway_3:{seen:0b,cleared:0b},hallway_4:{seen:0b,cleared:0b},hallway_5:{seen:0b,cleared:0b},hallway_6:{seen:0b,cleared:0b},hallway_7:{seen:0b,cleared:0b},bathroom_1:{seen:0b,cleared:0b},ball_room:{seen:0b,cleared:0b},storage_room:{seen:0b,cleared:0b},washroom_1:{seen:0b,cleared:0b},fortune_tellers_room:{seen:0b,cleared:0b},mirror_room:{seen:0b,cleared:0b},laundry_room:{seen:0b,cleared:0b},butlers_room:{seen:0b,cleared:0b},hidden_room:{seen:0b,cleared:0b},conservatory:{seen:0b,cleared:0b},dining_room:{seen:0b,cleared:0b},kitchen:{seen:0b,cleared:0b},boneyard:{seen:0b,cleared:0b},graveyard:{seen:0b,cleared:0b},courtyard:{seen:0b,cleared:0b},bottom_of_the_well:{seen:0b,cleared:0b},rec_room:{seen:0b,cleared:0b},hallway_8:{seen:0b,cleared:0b},tea_room:{seen:0b,cleared:0b},hallway_9:{seen:0b,cleared:0b},hallway_10:{seen:0b,cleared:0b},hallway_11:{seen:0b,cleared:0b},hallway_12:{seen:0b,cleared:0b},hallway_13:{seen:0b,cleared:0b},hallway_14:{seen:0b,cleared:0b},hallway_15:{seen:0b,cleared:0b},washroom_2:{seen:0b,cleared:0b},bathroom_2:{seen:0b,cleared:0b},nanas_room:{seen:0b,cleared:0b},astral_hall:{seen:0b,cleared:0b},observatory:{seen:0b,cleared:0b},billiards_room:{seen:0b,cleared:0b},projection_room:{seen:0b,cleared:0b},twins_room:{seen:0b,cleared:0b},safari_room:{seen:0b,cleared:0b},hallway_16:{seen:0b,cleared:0b},hallway_17:{seen:0b,cleared:0b},balcony_2:{seen:0b,cleared:0b},hallway_18:{seen:0b,cleared:0b},hallway_19:{seen:0b,cleared:0b},telephone_room:{seen:0b,cleared:0b},breaker_room:{seen:0b,cleared:0b},cellar:{seen:0b,cleared:0b},hallway_20:{seen:0b,cleared:0b},hallway_21:{seen:0b,cleared:0b},hallway_22:{seen:0b,cleared:0b},clockwork_room:{seen:0b,cleared:0b},roof:{seen:0b,cleared:0b},armory:{seen:0b,cleared:0b},ceramics_studio:{seen:0b,cleared:0b},sealed_room:{seen:0b,cleared:0b},pipe_room:{seen:0b,cleared:0b},cold_storage:{seen:0b,cleared:0b},sitting_room:{seen:0b,cleared:0b},guest_room:{seen:0b,cleared:0b},artists_studio:{seen:0b,cleared:0b},secret_altar:{seen:0b,cleared:0b}},portrait_ghosts:{neville:{portrificationized:0b,health:10000,max_health:10000,rank:0b},lydia:{portrificationized:0b,health:10000,max_health:10000,rank:0b},chauncey:{portrificationized:0b,health:10000,max_health:10000,rank:0b},floating_whirlindas:{portrificationized:0b,health:10000,max_health:10000,rank:0b},shivers:{portrificationized:0b,health:10000,max_health:10000,rank:0b},melody_pianissima:{portrificationized:0b,health:10000,max_health:10000,rank:0b},mr_luggs:{portrificationized:0b,health:10000,max_health:10000,rank:0b},spooky:{portrificationized:0b,health:10000,max_health:10000,rank:0b},bogmire:{portrificationized:0b,health:10000,max_health:10000,rank:0b},biff_atlas:{portrificationized:0b,health:10000,max_health:10000,rank:0b},miss_petunia:{portrificationized:0b,health:10000,max_health:10000,rank:0b},nana:{portrificationized:0b,health:10000,max_health:10000,rank:0b},slim_bankshot:{portrificationized:0b,health:10000,max_health:10000,rank:0b},henry_and_orville:{portrificationized:0b,henry_health:10000,henry_max_health:10000,orville_health:10000,orville_max_health:10000,rank:0b},madame_clairvoya:{portrificationized:0b,health:10000,max_health:10000,rank:0b},boolossus:{portrificationized:0b,health:15,max_health:15,rank:0b},uncle_grimmly:{portrificationized:0b,health:10000,max_health:10000,rank:0b},clockwork_soldiers:{portrificationized:0b,pink_health:10000,pink_max_health:10000,blue_health:10000,blue_max_health:10000,green_health:10000,green_max_health:10000,rank:0b},jarvis:{portrificationized:0b,health:10000,max_health:10000,rank:0b},sir_weston:{portrificationized:0b,health:10000,max_health:10000,rank:0b},sue_pea:{portrificationized:0b,health:10000,max_health:10000,rank:0b},vincent_van_gore:{portrificationized:0b,health:10000,max_health:10000,rank:0b},king_boo:{portrificationized:0b,health:50000,max_health:50000,rank:0b}},boos:[{name:"bamboo",room:3,trap_found:0b,speed:6,health:3000},{name:"bootha",room:4,trap_found:0b,speed:6,health:5000},{name:"gameboo_advance",room:5,trap_found:0b,speed:6,health:3000},{name:"taboo",room:8,trap_found:0b,speed:6,health:5000},{name:"boolicious",room:9,trap_found:0b,speed:6,health:3000},{name:"turboo",room:10,trap_found:0b,speed:6,health:5000},{name:"boo_la_la",room:17,trap_found:0b,speed:6,health:6000},{name:"gameboo",room:18,trap_found:0b,speed:6,health:5000},{name:"kung_boo",room:21,trap_found:0b,speed:6,health:4000},{name:"boogie",room:22,trap_found:0b,speed:6,health:4000},{name:"peekaboo",room:23,trap_found:0b,speed:6,health:4000},{name:"gumboo",room:24,trap_found:0b,speed:6,health:4000},{name:"boomeo",room:25,trap_found:0b,speed:6,health:4000},{name:"boodacious",room:26,trap_found:0b,speed:6,health:8000},{name:"booligan",room:27,trap_found:0b,speed:6,health:8000},{name:"booregard",room:32,trap_found:0b,speed:6,health:10000},{name:"mr_boojangles",room:34,trap_found:0b,speed:6,health:5000},{name:"limbooger",room:44,trap_found:0b,speed:6,health:10000},{name:"boonswoggle",room:45,trap_found:0b,speed:6,health:10000},{name:"boohoo",room:47,trap_found:0b,speed:6,health:5000},{name:"shamboo",room:48,trap_found:0b,speed:6,health:5000},{name:"booris",room:49,trap_found:0b,speed:6,health:10000},{name:"booigi",room:20,trap_found:0b,speed:6,health:4000},{name:"little_boo_peep",room:50,trap_found:0b,speed:6,health:10000},{name:"boo_b_hatch",room:57,trap_found:0b,speed:6,health:20000},{name:"booripedes",room:58,trap_found:0b,speed:6,health:10000},{name:"boomerang",room:56,trap_found:0b,speed:6,health:30000},{name:"booscaster",room:62,trap_found:0b,speed:6,health:30000},{name:"underboo",room:64,trap_found:0b,speed:6,health:15000},{name:"tamboorine",room:65,trap_found:0b,speed:6,health:20000},{name:"booffant",room:67,trap_found:0b,speed:6,health:30000},{name:"boolderdash",room:68,trap_found:0b,speed:6,health:15000},{name:"boolivia",room:69,trap_found:0b,speed:6,health:10000},{name:"boonita",room:70,trap_found:0b,speed:6,health:10000},{name:"bootique",room:71,trap_found:0b,speed:6,health:30000}],money:{gold_coin:0,bill:0,gold_bar:0,blue_sapphire:0,green_emerald:0,red_ruby:0,blue_diamond:0,red_diamond:0,gold_diamond:0,small_pearl:0,medium_pearl:0,big_pearl:0},ghost_health:{gold_ghost:1000,temper_terror:1000,trap_found:0b,speedy_spirit:1000,purple_puncher:2000,flash:2000,blue_twirler:3000,blue_blaze:3000,garbage_can_ghost:4000,ceiling_surprise:1,purple_bomber:1,bowling_ghost:1,grabbing_ghost:1000,red_grabbing_ghost:2000,mirror_ghost:2000,cinema_ghost:2000,ghost_guy:2000,dancing_ghost_guy:2000,mr_bones:3000,waiter:1000}}}}
execute unless score #mansion_data_index Selected matches -2147483648.. run scoreboard players set #mansion_data_index Selected 0
execute unless score #previous_mansion_index Selected matches -2147483648.. run scoreboard players set #previous_mansion_index Selected 0
execute unless score #mirrored Selected matches 0..1 run scoreboard players set #mirrored Selected 0
execute unless score #can_warp Selected matches 0..1 run scoreboard players set #can_warp Selected 1
execute unless score #multiply_hurt Selected matches 0.. run scoreboard players set #multiply_hurt Selected 100
execute unless score #multiply_damage Selected matches 0.. run scoreboard players set #multiply_damage Selected 100
execute unless score #changing_max_health Selected matches 0..1 run scoreboard players set #changing_max_health Selected 0