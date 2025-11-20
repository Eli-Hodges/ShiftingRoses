// Guidelines for Stockpiles. Items should always cost ~50% more to withdraw than was recieved for depositing.
// Export Prices should fall between the payout and the withdraw, unless the item is incredibly cheap.

/datum/stock/stockpile
	var/oversupply_amount = 999
	var/oversupply_payout = 0

/datum/stock/stockpile/get_payout_price(obj/item/I)
	return (held_items >= oversupply_amount) ? oversupply_payout : payout_price

/datum/stock/stockpile/wood
	name = "Small Log"
	desc = "Wooden logs cut short for transport."
	item_type = /obj/item/grown/log/tree/small
	held_items = 5
	payout_price = 1
	withdraw_price = 6
	export_price = 5
	importexport_amt = 10
	oversupply_amount = 25

/datum/stock/stockpile/stone
	name = "Stone"
	desc = "Chunks of stone good for masonry and construction."
	item_type = /obj/item/natural/stone
	held_items = 5
	payout_price = 1
	withdraw_price = 4
	export_price = 3
	importexport_amt = 10
	oversupply_amount = 25

/datum/stock/stockpile/cloth
	name = "Cloth"
	desc = "Cloth sewn for further sewing and tailoring."
	item_type = /obj/item/natural/cloth
	held_items = 4
	payout_price = 1
	withdraw_price = 3
	export_price = 2
	importexport_amt = 10
	oversupply_amount = 20

/datum/stock/stockpile/hide
	name = "Hide"
	desc = "Hide stripped off of prey."
	item_type = /obj/item/natural/hide
	held_items = 0
	importexport_amt = 10
	payout_price = 4
	withdraw_price = 7
	export_price = 6
	importexport_amt = 10

/datum/stock/stockpile/cured
	name = "Cured Leather"
	desc = "Cured Leather ready to be worked."
	item_type = /obj/item/natural/hide/cured
	held_items = 4
	payout_price = 3
	withdraw_price = 15
	export_price = 12

/datum/stock/stockpile/silk
	name = "Silk"
	desc = "Strands of fine silk used for exotic weaving"
	item_type = /obj/item/natural/silk
	held_items = 4
	payout_price = 5
	withdraw_price = 8
	export_price = 7
	importexport_amt = 10

/datum/stock/stockpile/salt
	name = "Salt"
	desc = "Rock salt useful for curing and cooking."
	item_type = /obj/item/reagent_containers/powder/salt
	held_items = 5
	payout_price = 4
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/egg
	name = "Eggs"
	desc = "Also known as cackleberries amongst the peasants."
	item_type = /obj/item/reagent_containers/food/snacks/egg
	held_items = 5
	payout_price = 4
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/butter
	name = "Butter"
	desc = "Just a stick of butter."
	item_type = /obj/item/reagent_containers/food/snacks/butter
	held_items = 5
	payout_price = 4
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/freshcheese
	name = "Cheese"
	desc = "A ball of soft, fresh cheese."
	item_type = /obj/item/reagent_containers/food/snacks/cheese
	held_items = 5
	payout_price = 4
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/grain
	name = "Grain"
	desc = "Wheat grains primed for milling."
	item_type = /obj/item/reagent_containers/food/snacks/produce/grain/wheat
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/oat
	name = "Oat"
	desc = "Oat grains primed for milling."
	item_type = /obj/item/reagent_containers/food/snacks/produce/grain/oat
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/turnip
	name = "Turnips"
	desc = "A hearty root vegetable fit for soup."
	item_type = /obj/item/reagent_containers/food/snacks/produce/vegetable/turnip
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/potato
	name = "Potatoes"
	desc = "A reliable if tough vegetable of Dwarven popularity."
	item_type = /obj/item/reagent_containers/food/snacks/produce/vegetable/potato
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/onion
	name = "Onions"
	desc = "A wonderful vegetable with many layers and a broad flavor profile."
	item_type = /obj/item/reagent_containers/food/snacks/produce/vegetable/onion
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD


/datum/stock/stockpile/coffee
	name = "Coffee"
	desc = "A staple of New Palmos, not yet roasted."
	item_type = /obj/item/reagent_containers/food/snacks/produce/coffeebeans
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/tea
	name = "Dried Tea Leaves"
	desc = "Dried, edible tea leaves that still need to be ground before use."
	item_type = /obj/item/reagent_containers/food/snacks/produce/tealeaves_dry
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/apple
	name = "Apples"
	desc = "A shiny red apple, for cooking, brewing, and consumption."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/apple
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/strawberry
	name = "Strawberries"
	desc = "The shiny, sweet fruit of the summer."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/strawberry
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/raspberry
	name = "Raspberries"
	desc = "Sweet red fruit, fresh from the vine."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/raspberry
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/blackberry
	name = "Blackberries"
	desc = "Delectable black fruits."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/blackberry
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/jackberry
	name = "Jackberries"
	desc = "The most common berry across the world."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/jacksberry
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/pear
	name = "Pears"
	desc = "Too sweet for many, a favored treat for little ones. Dwarves do love them."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/pear
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/lemon
	name = "Lemons"
	desc = "A sleep alternative for those determined enough."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/lemon
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/lime
	name = "Limes"
	desc = "Along with its other citrus cousins, limes are well loved by sailors and seafolk for their ability to keep and stave off scurvy."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/lime
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/tangerine
	name = "Tangerines"
	desc = "A citrus fruit loved by kids for its peelablity and more mild sweetness compared to limes and lemons."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/tangerine
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/plum
	name = "Plums"
	desc = "A fruit with a large seed in the middle. Its blossoms are enjoyed in the spring, and its fruits in the summer."
	item_type = /obj/item/reagent_containers/food/snacks/produce/fruit/plum
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/sugarcane
	name = "Sugarcane"
	desc = "A crop best suited for a warmer climate, raw sugar cane is considered a sweet snack by some sea elves."
	item_type = /obj/item/reagent_containers/food/snacks/produce/sugarcane
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/poppy
	name = "Poppies"
	desc = "For their crimson beauty and the sedating effect of their crushed seeds, these flowers are considered a symbol of Eora."
	item_type = /obj/item/reagent_containers/food/snacks/produce/poppy
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD

/datum/stock/stockpile/sunflower
	name = "Sunflowers"
	desc = "A bright flow, face turned always towards the sun."
	item_type = /obj/item/reagent_containers/food/snacks/produce/sunflower
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_FOOD


/datum/stock/stockpile/coal
	name = "Coal"
	desc = "Chunks of coal used for fuel and alloying."
	item_type = /obj/item/ore/coal
	held_items = 5
	payout_price = 3
	withdraw_price = 6
	export_price = 5
	importexport_amt = 20
	stockpile_id = STOCK_METAL

/datum/stock/stockpile/copper
	name = "Copper Ore"
	desc = "Raw unrefined copper."
	item_type = /obj/item/ore/copper
	held_items = 4
	payout_price = 2
	withdraw_price = 6
	export_price = 5
	importexport_amt = 10
	stockpile_id = STOCK_METAL

/datum/stock/stockpile/tin
	name = "Tin Ore"
	desc = "Raw tin fit for alloying."
	item_type = /obj/item/ore/tin
	held_items = 4
	payout_price = 2
	withdraw_price = 7
	export_price = 6
	importexport_amt = 10
	stockpile_id = STOCK_METAL

/datum/stock/stockpile/iron
	name = "Iron Ore"
	desc = "Raw unrefined iron."
	item_type = /obj/item/ore/iron
	held_items = 2
	payout_price = 4
	withdraw_price = 12
	export_price = 10
	importexport_amt = 10
	stockpile_id = STOCK_METAL

/datum/stock/stockpile/silver
	name = "Silver Ore"
	desc = "Raw unrefined silver."
	item_type = /obj/item/ore/silver
	held_items = 4
	payout_price = 6
	withdraw_price = 15
	export_price = 26
	importexport_amt = 5
	stockpile_id = STOCK_METAL

/datum/stock/stockpile/gold
	name = "Gold Ore"
	desc = "Raw unrefined gold."
	item_type = /obj/item/ore/gold
	held_items = 4
	payout_price = 7
	withdraw_price = 17
	export_price = 30
	importexport_amt = 5
	stockpile_id = STOCK_METAL

