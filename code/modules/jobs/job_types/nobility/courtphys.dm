/datum/job/courtphys
	title = "Palace Physician"
	tutorial = "Skilled in the arts of barber surgery, \
	you are a hired hand to ensure that the Palace and its peoples are kept alive and well in case anything dire happens. \
	It's through your hands that the Maggiore could be spared a terrible fate, or be cast off into whatever afterlife they believe in."
	department_flag = NOBLEMEN
	display_order = JDO_PHYSICIAN
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	min_pq = 0

	allowed_races = RACES_PLAYER_ALL

	outfit = /datum/outfit/job/courtphys
	give_bank_account = 100
	cmode_music = 'sound/music/cmode/nobility/combat_physician.ogg'

	spells = list(
		/datum/action/cooldown/spell/diagnose,
	)

/datum/outfit/job/courtphys
	job_bitflag = BITFLAG_ROYALTY

/datum/outfit/job/courtphys/pre_equip(mob/living/carbon/human/H)
	. = ..()
	H.virginity = TRUE
	shoes = /obj/item/clothing/shoes/shortboots
	shirt = /obj/item/clothing/shirt/undershirt/fancy
	backr = /obj/item/storage/backpack/satchel
	backl = /obj/item/storage/backpack/satchel/surgbag
	gloves = /obj/item/clothing/gloves/leather/feld
	head = /obj/item/clothing/head/courtphysician
	mask = /obj/item/clothing/face/courtphysician
	neck = /obj/item/clothing/neck/courtphysician
	belt = /obj/item/storage/belt/leather
	beltl = /obj/item/storage/keyring/physician
	beltr = /obj/item/weapon/mace/courtphysician
	armor = /obj/item/clothing/shirt/robe/courtphysician
	if(H.gender == FEMALE)
		pants = /obj/item/clothing/pants/skirt/colored/random
	else
		pants = /obj/item/clothing/pants/tights/colored/random
	H.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 5, TRUE)
	H.adjust_skillrank(/datum/skill/craft/alchemy, 3, TRUE)
	H.adjust_skillrank(/datum/skill/labor/mathematics, 3, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.change_stat(STATKEY_STR, -1)
	H.change_stat(STATKEY_INT, 4)
	H.change_stat(STATKEY_CON, -1)
	ADD_TRAIT(H, TRAIT_EMPATH, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_LEGENDARY_ALCHEMIST, TRAIT_GENERIC)
	if(H.dna.species.id != SPEC_ID_MEDICATOR)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
