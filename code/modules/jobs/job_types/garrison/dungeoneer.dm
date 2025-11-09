/datum/job/dungeoneer
	title = "Nightlord"
	tutorial = "A shadow in the dark, and a ghost which stalks the streets well after dusk. \
	Yet you are no haunting figure meant to scare the populace. \
	You are a watchful guardian ensuring that even in the darkest hours the City can sleep soundly. \
	You are a Lord of the Night, known as a Nightlord by many. \
	Tasked by the Palace in guarding the streets at night and seeking out criminal activity, \
	the darkness is your friend and you revel in it. \
	Show those who would bring harm to New Palmos that the shadows are not their friends."
	department_flag = GARRISON
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_DUNGEONEER
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	min_pq = 0

	allowed_races = RACES_PLAYER_ALL

	outfit = /datum/outfit/job/dungeoneer
	give_bank_account = 50

	cmode_music = 'sound/music/cmode/nobility/CombatDungeoneer.ogg'

/datum/outfit/job/dungeoneer
	job_bitflag = BITFLAG_GARRISON

/datum/outfit/job/dungeoneer/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/menacing
	neck = /obj/item/storage/belt/pouch/coins/poor	// Small storage. N.
	pants = /obj/item/clothing/pants/trou
	shoes = /obj/item/clothing/shoes/simpleshoes
	wrists = /obj/item/clothing/wrists/bracers/leather
	cloak = /obj/item/clothing/cloak/stabard/colored/dungeon
	belt = /obj/item/storage/belt/leather
	beltr = /obj/item/weapon/whip/antique
	beltl = /obj/item/storage/keyring/dungeoneer
	backr = /obj/item/storage/backpack/satchel	// lack of satchel requires dealing with the merchant to correct, which requires entering town; not ideal. N.


	H.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE) // Allow reading notes passed to the literate noble prisoner, or writing reports. N. See peasants\prisoner.dm.
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)
	H.change_stat(STATKEY_STR, 2)
	H.change_stat(STATKEY_INT, -2)
	H.change_stat(STATKEY_END, 2)
	H.change_stat(STATKEY_CON, 1)
	H.change_stat(STATKEY_SPD, -1)
	H.change_stat(STATKEY_PER, -1)
	if(H.dna?.species)
		if(H.dna.species.id == SPEC_ID_HUMEN)
			H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()
	H.verbs |= /mob/living/carbon/human/proc/torture_victim
