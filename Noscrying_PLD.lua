texts = require('texts')
local res = require('resources')
include('organizer-lib')
function get_sets() --!=ALT - ^=CTRL
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	
	send_command('bind f10 gs c toggle run set') 
	send_command('bind !f10 gs c toggle Idle Tank set') 

	send_command('bind f12 gs c toggle Cure set') 
	
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Shield set') 
	send_command('bind ^f7 gs c toggle Sub_Weapons set') 
	
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad1 gs c toggle Holy Water')
	
	send_command('bind !numpad3 gs c toggle Remedy')
	
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind ^numpad0 gs c toggle Idle Tank')
	
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('bind !pageup input //send Nolyte /Savage Blade')	
	send_command('bind !pagedown input //send Kiokura /Savage Blade')
	send_command('bind !end input //send Kiokura /LeadenSalute')
	send_command('bind !delete input //send Kiokura /LastStand')

	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Shield_Index = 1	
	Buff_Index = 1	

	sets["WarpRing"] = {
	right_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}

	Weapons_Set_Names = {'Burtgang',"Naegling",'Prophetic Club'} --, 'Caladbolg','Sakpata','Excalibur',"Malignance Sword",
	sets.weapons = {}

	sets.weapons.Caladbolg = {
    main="Caladbolg",
	sub="Utu Grip",
	}
	sets.weapons.Naegling = {
    main="Naegling",
	}
	sets.weapons["Sakpata"] = {
    main="Sakpata's Sword",
	}
	sets.weapons["Burtgang"] = {
    main="Burtgang",
	}
	sets.weapons["Malignance Sword"] = {
    main="Malignance Sword",
	}
	sets.weapons["Excalibur"] = {
    main="Excalibur",
	}	
	sets.weapons["Prophetic Club"] = {
    main="Prophetic Club",
	}	
	Shield_Set_Names = {'Aegis','Duban','Blurred +1'} --,
	sets.Shield = {}
	sets.Shield["Aegis"] = {
	sub="Aegis",
	}		
	sets.Shield["Duban"] = {
	sub="Duban",
	}			
	sets.Shield["Blurred +1"] = {
	sub="Blurred Shield +1",
	}			
	Sub_Weapons_Set_Names = {'Malevolence',"Malignance Pole"} --,
	sets.sub_weapons = {}
	sets.sub_weapons.Malevolence = {
    main={ name="Malevolence", augments={'INT+10','Mag. Acc.+10','"Mag.Atk.Bns."+10','"Fast Cast"+5',}},
	sub="Blurred Shield +1",
	}	
	sets.sub_weapons["Malignance Pole"] = {
    main="Malignance Pole",
	sub="Utu Grip",
	}	
	sets.ranged = {}
	sets.ranged.precast = {
	ranged="Ullr",
    ammo="Chapuli Arrow",
	}
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {"Damage","Hybrid"}
	DD_Mode_ind = 1

	sets.DD_Mode["Hybrid"] = { --, 3160 HP,
    ammo="Staunch Tathlum +1",
    head="Chevalier's Armet +2",priority=15,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Hoxne Torque",
    waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Moonlight Ring", priority=13,
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.DD_Mode["Damage"] = { --, 2791 HP,
    ammo="Coiste Bodhar",
    head="Hjarrandi Helm",
    body="Sakpata's Plate",
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Telos Earring",
    left_ring="Moonlight Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {"DEF",'Block',"Magic Absorb/Annul"} --,Hybrid
	Tank_Mode_ind = 1
	
	sets.Tank_Mode["DEF"] = { --, 3301 HP, 684 MEVA, -12% Enemy Crit Rate, -56% DT
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, Priority=19,
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Alabaster Earring", Priority=18,
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Apeile Ring +1",
    right_ring="Warden's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.Tank_Mode["Block"] = { --, 3206 HP, -51% DT, -12% Enemy Crit Rate, Block+6 (missing +5 from Ambu Cape), +20 Ele
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=15,
    body="Adamantite Armor",priority=18,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=19,
	
    -- neck={ name="Unmoving Collar +1", augments={'Path: A',}},priority=17,
    -- waist="Carrier's Sash",
    neck="Hoxne Torque",
    waist="Plat. Mog. Belt", priority=20,
	
    left_ear="Thureous Earring",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Apeile Ring +1",
    right_ring="Warden's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.Tank_Mode["Magic Absorb/Annul"] = { --, 3208 HP, 684 MEVA, +5% Absorb Magic, +5% Annul Magic,
    ammo="Vanir Battery",
    head="Chevalier's Armet +2", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    --neck="Warder's Charm +1",
	neck="Unmoving Collar +1",
	waist="Carrier's Sash",
    --waist="Plat. Mog. Belt",priority=20,
	--waist="Null Belt",priority=20,
    left_ear="Sanare Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Shadow Ring",
    right_ring="Moonlight Ring",
    back="Null Shawl",
	}


	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { --, 3165 HP, 690 MEVA, +54MDB, +20 Ele, 5% Magic Absorb, 5% Magic Annul, 5% Magic Scherzo, -56% DT
    ammo="Shadow Sachet",
    head="Null Masque",
    body="Adamantite Armor", priority=19,
    hands="Sakpata's Gauntlets",priority=16,
    legs="Sakpata's Cuisses",priority=17,
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Sanare Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Apeile Ring +1",
    right_ring="Shadow Ring",
    back="Null Shawl",
	}	
		
	Run_Set_Names = {'DT','Idle Tank','Refresh','Regen'}
	sets.run = {}
	sets.run.DT =  { --, 3216 HP, 678 MEVA, +20 Ele, Refresh +2, Regen +3, -50% DT
    ammo="Shadow Sachet",
    head="Chevalier's Armet +2", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Chev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings", priority=17,
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Alabaster Earring", priority=16,
	right_ear="Tuisto Earring", priority=18,
    left_ring="Apeile Ring +1",
    right_ring="Warden's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.run.Regen =  { --, 3215 HP, 572 MEVA, +2 Refresh, +33 Regen, -22% DT
    ammo="Homiliary",
    head="Null Masque", Priority=17,
    body="Sacro Breastplate",priority=18,
    hands="Regal Gauntlets",priority=19,
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Alabaster Earring", priority=16,
	right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.run.Refresh =  { --, 3364 HP, 479 MEVA, +8 Refresh, +3 Regen, -32% DT
    ammo="Homiliary",
    head="Null Masque", Priority=17,
    body="Chozor. Coselete",
    hands="Regal Gauntlets",priority=18,
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings",
    neck="Sibyl Scarf",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Sanare Earring",
	right_ear="Tuisto Earring", priority=16,
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",priority=19,
	}
	sets.run.DD_Idle =  {
    ammo="Shadow Sachet",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Null Belt",
    left_ear="Alabaster Earring", priority=16,
	right_ear="Chevalier's Earring",
    left_ring="Shadow Ring",
    right_ring="Warden's Ring",
    back="Null Shawl",
	}	

	sets.run["Idle Tank"] = { --, 3270 HP, 
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=18,
    body="Adamantite Armor",priority=19,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=17,
    --neck="Warder's Charm +1",
    neck="Hoxne Torque",
	waist="Carrier's Sash",
    --waist="Plat. Mog. Belt",priority=20,
	--waist="Null Belt",priority=20,
    left_ear="Thureous Earring",
	right_ear="Alabaster Earring",
    left_ring="Apeile Ring +1",
    right_ring="Warden's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	
	sets["Idle Tank"] = {
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=18,
    body="Adamantite Armor",priority=19,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=17,
    --neck="Warder's Charm +1",
    neck="Hoxne Torque",
	waist="Carrier's Sash",
    --waist="Plat. Mog. Belt",priority=20,
	--waist="Null Belt",priority=20,
	waist="Null Belt",priority=20,
    left_ear="Thureous Earring",
	right_ear="Alabaster Earring",
    left_ring="Apeile Ring +1",
    right_ring="Warden's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}

	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	}

	sets.CureHP = {						--, +355
	right_Ear="Magnetic Earring",
    left_ear="Alabaster Earring",	priority=20, 	--, +110HP
	left_ring="Moonlight Ring",		priority=19,	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
	}	
	sets.TankHP = {						--, +760
    neck="Unmoving Collar +1",priority=19, 		--, +200HP
	waist="Platinum Moogle Belt",priority=20, 	--, +270-400HP'ish
    left_ear="Alabaster Earring",priority=17, 	--, +110HP
	right_ear="Tuisto Earring", priority=18, 	--, +150HP
	}
	sets.TankEnmity = {					--, +560
	waist="Platinum Moogle Belt",priority=20,	--, +270-400HP'ish
    left_ear="Alabaster Earring",priority=18, 	--, +110HP
	right_ear="Tuisto Earring", priority=18,	--, +150HP
	}
	sets.TankFoil = {					--, +260HP
    left_ear="Alabaster Earring",priority=19, 	--, +110HP
	right_ear="Tuisto Earring", priority=18,	--, +150HP
	}
	sets.TankWS = {						--, +760HP
    neck="Unmoving Collar +1",priority=19, 		--, +200HP
	--waist="Platinum Moogle Belt",priority=20, 	--, +270-400HP'ish
	right_ear="Tuisto Earring", priority=18, 	--, +150HP
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	}
	
	sets.ws = {}
	sets.ws['Resolution']	= { 	--FTP Replicating WS, Prefer Multi Attack to WSD
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=17, 
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=19, 
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},priority=16, 
    legs="Meg. Chausses +2",priority=18, 
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},priority=15, 
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ephramad's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}


	sets.ws.epami = {
	right_ring="Epaminondas's Ring",	
	}
	
	sets.ws['Spinning Slash']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Freezebite']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",priority=19, 
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Herculean Slash']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shockwave']	= { 		--, Use MACC to ensure additional effect proc, Sleepga
    ammo="Yamarang",
    head="Null Masque",priority=16,  
    body="Adamantite Armor", priority=16,priority=18, 
    hands="Erilaz Gauntlets +2",priority=15, 
    legs="Erilaz Leg Guards +2",priority=17, 
    feet="Erilaz Greaves +2",priority=14, 
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Erilaz Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.ws['Ground Strike']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    feet="Nyame Sollerets",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Torcleaver']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	

	sets.ws['Atonement']	= { --, 3150 HP, +130% Enmity +23 Burtgang +30 Crusade = +182% Enmity -> 1K - 1716CE + 5148VE <> 2K - 2145CE + 6435VE <> 3K - 2574CE + 7722VE 
    ammo="Sapience Orb",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=19,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=18,
    legs="Souveran Diechlings +1",priority=16,
	feet="Chevalier's Sabatons +2",priority=17,
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, priority=20,
    --neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Trux Earring",
    right_ear="Cryptic Earring",
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Knights of Round"]	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Chant du Cygne']	= {
    ammo="Knobkierrie",
    head="Blistering Sallet +1",
    body="Hjarrandi Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= { 	--, Mix MACC and MAB for high Drain rate
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Crep. Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Moonlight Ring", priority=13,
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Circle Blade"] = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	}
	sets.ws["Cataclysm"]	= { 	--, Mix MACC and MAB for high Drain rate
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Crematio Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Aeolian Edge"]	= { 	--, Mix MACC and MAB for high Drain rate
    ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body="Ruwa Breastplate",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Moonshade Earring",
    right_ear="Crematio Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shell Crusher']	= { 		--, Use MACC to ensure additional effect proc, Sleepga
    ammo="Pemphredo Tathlum",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Chev. Gauntlets +2",
    legs="Nyame Flanchard",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null Loop",
    waist="Null Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Crep. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weather. Ring +1",
    back="Null Shawl",
	}
	sets.ws['Retribution']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Judgment']	= {
    ammo="Prophetica",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ruwa Breastplate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Prophetica",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Sakpata's Plate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Flash Nova']	= {
    ammo="Prophetica",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    left_ring="Weather. Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ja = {} 					-- Leave this empty
	sets.ja.Enmity = { --, 3115 HP, +130 Enmity +23 Burtgang +30 Crusade = +183% Enmity
    ammo="Sapience Orb",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body="Souveran Cuirass +1", priority=16,
    hands={ name="Yorium Gauntlets", augments={'Mag. Evasion+19','Enmity+10','Damage taken-3%',}},
    legs="Souveran Diechlings +1",priority=15,
	feet="Chevalier's Sabatons +2",priority=13,
    neck="Moonlight Necklace",
    waist="Platinum Moogle Belt", priority=20,
    left_ear="Trux Earring",
    right_ear="Tuisto Earring",
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.ja.DD_Enmity = { --, 2762 HP, +139 Enmity +23 Burtgang +30 Crusade = +192% Enmity
    ammo="Sapience Orb",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body="Souveran Cuirass +1", priority=16,
    hands={ name="Yorium Gauntlets", augments={'Mag. Evasion+19','Enmity+10','Damage taken-3%',}},
    legs="Souveran Diechlings +1",priority=15,
	feet="Chevalier's Sabatons +2",
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Trux Earring",
    right_ear="Cryptic Earring",
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}

	sets.ja['Holy Circle'] = set_combine(sets.ja.Enmity, {
	feet="Gallant Leggings",
	})
	sets.ja['Divine Emblem'] = set_combine(sets.ja.Enmity, {
	feet="Chevalier's Sabatons +2",
	})
	sets.ja['Sentinel'] = set_combine(sets.ja.Enmity, {
	feet="Cab. Leggings +3",
	})
	sets.ja['Cover'] = set_combine(sets.ja.Enmity, {
	body="Caballarius Surcoat", priority=16,
	})
	sets.ja['Chivalry'] = set_combine(sets.ja.Enmity, {
    hands="Cab. Gauntlets +3",
	})
	sets.ja['Shield Bash'] = set_combine(sets.ja.Enmity, {
    hands="Cab. Gauntlets +3",
	})
	sets.ja['Fealty'] = set_combine(sets.ja.Enmity, {
    body="Caballarius Surcoat", priority=16,
	})
	sets.ja['Invincible'] = set_combine(sets.ja.Enmity, {
    legs="Caballarius Breeches", priority=16,
	})
	sets.ja['Rampart'] = set_combine(sets.ja.Enmity, {
    head="Caballarius Coronet", priority=15,
	})
	sets.idle = {}
	
	sets.precast = {}
	sets.precast.fastcast = { --, +76% FC, 3028 HP
    ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Sacro Breastplate",priority=17,
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Enif Cosciales",
	feet="Chevalier's Sabatons +2",
    --neck={ name="Unmoving Collar +1", augments={'Path: A',}},priority=19,
	neck="Voltsurge Torque",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Alabaster Earring", priority=16,
    right_ear="Tuisto Earring", priority=18,
    left_ring="Kishar Ring",
    right_ring="Weather. Ring +1",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	} 

    sets.midcast = {} 
	sets.midcast.sird = set_combine(sets.ja.Enmity, {  --, +106% SIRD, 3129 HP, -42% DT
    ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=15,
    body="Adamantite Armor", priority=16,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=14,
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
    feet="Odyssean Greaves",
    neck="Moonlight Necklace",
    waist="Flume Belt",
    left_ear="Alabaster Earring", priority=17,
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Moonlight Ring", priority=13,
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, priority=17,
    back="Null Cape",
	})
	sets.midcast.BLUEnmitySIRD = set_combine(sets.ja.Enmity, { 
    ammo="Staunch Tathlum +1", --, +104% SIRD, 3091 HP, +40 Enmity +23 Burgang +30 Crusade = 93% Enmity, -51% DT
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=19,
    body="Adamantite Armor", priority=20,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=18,
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
	feet="Chevalier's Sabatons +2",priority=17,
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Magnetic Earring",
    right_ear="Alabaster Earring", priority=16,
    left_ring="Murky Ring",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	})
	sets.midcast.enmity = set_combine(sets.ja.Enmity, {
	})
	sets.midcast.MaxEnmity = set_combine(sets.ja.Enmity, {
	})
	sets.midcast.Foil = set_combine(sets.ja.Enmity, {
	})
	
	sets.midcast.phalanx = { --, +32 Phalanx, Enhancing Skill 425: 32 Phalanx = -64, 3239 HP, -41% DT
	--Skill: 300 329 358 386 415 443 472 500
	--Dmg: 	-28 -29 -30 -31 -32 -33 -34 -35
    ammo="Staunch Tathlum +1",
    head={ name="Yorium Barbuta", augments={'Mag. Evasion+19','Enmity+7','Phalanx +2',}},
    body={ name="Yorium Cuirass", augments={'Mag. Evasion+20','Enmity+7','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=14,
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=15,
    neck="Moonlight Necklace",
    waist="Audumbla Sash",
    left_ear="Magnetic Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Murky Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, priority=17,
    back={ name="Weard Mantle", augments={'VIT+4','DEX+1','Enmity+4','Phalanx +5',}},
	}
	sets.midcast.PhalanxOutOfCombat = set_combine(sets.midcast.phalanx, { --, +32 Phalanx, Enhancing Skill 387: 31 Phalanx = -63, 3129 HP, -60% DT
	main="Sakpata's Sword",
    sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}},
    neck="Hoxne Torque",
	})
	
	sets.midcast["Reprisal"] = { --, 3016 HP, -39% DT, +42% FC (-21% Recast) 
    ammo="Staunch Tathlum +1",
    head="Chevalier's Armet +2",priority=15,
    body="Adamantite Armor",priority=17,
    hands="Regal Gauntlets",priority=19,
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
	feet="Chevalier's Sabatons +2",
    neck="Voltsurge Torque",priority=18,
    waist="Plat. Mog. Belt",priority=20,
    left_ear="Enchanting Earring +1",
    right_ear="Tuisto Earring",priority=16,
    left_ring="Murky Ring",
    right_ring="Weather. Ring +1",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.enhancingduration = set_combine(sets.midcast.sird, {
    hands="Regal Gauntlets",priority=14,
	})
	sets.midcast["Protect"] = set_combine(sets.midcast.sird, {
    hands="Regal Gauntlets",priority=14,
    right_ear="Brachyura Earring",
	})	
    sets.midcast.MACC = { --, +372 MACC 
    ammo="Pemphredo Tathlum",
    head="Null Masque",priority=18,
    body="Adamantite Armor",priority=19,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
	feet="Chevalier's Sabatons +2",
    neck="Null Loop",
    waist="Plat. Mog. Belt",priority=20,
    left_ear="Crep. Earring",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Null Shawl",
	}
    sets.midcast.MAB = {
    ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Sworn Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Stikini Ring +1",
    right_ring="Weather. Ring +1",
    back="Null Shawl",
	}
	
	Cure_Index = 1
	Cure_Set_Names = {'Potency Cure','MEVA Cure'}
	sets.Cure = {}	
    sets.Cure["Potency Cure"] = { --, 3045 HP
    ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=16,
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=15,
    hands="Regal Gauntlets",priority=18,
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},priority=14,
    feet="Odyssean Greaves",
    neck="Sacro Gorget",
    waist="Carrier's Sash",
    left_ear="Nourish. Earring +1",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Moonlight Ring",priority=17,
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=13,
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
    sets.Cure["MEVA Cure"] = { --,
    ammo="Staunch Tathlum +1",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Sacro Gorget",
    waist="Sroda Belt", priority=20,
    left_ear="Odnowa Earring",priority=19,
	right_ear="Tuisto Earring", priority=18,
    left_ring="Shadow Ring",
    right_ring="Moonlight Ring",
    back="Null Shawl",
	}
    sets.midcast.DD_Cure = { --, 2958 HP
    ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
    feet="Odyssean Greaves",
    neck="Sacro Gorget",
    waist="Null Belt",
    left_ear="Nourish. Earring +1",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Murky Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back="Null Shawl",
	}
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = { 	--, +42% Holy Water (Doom removal chance), 33% Base +42% = 75% Chance
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	waist="Gishdubar Sash",
	}
	sets.buff.Sleep = set_combine(sets.run.Regen, {
	head="Frenzy Sallet",
	})
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring +1"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {waist=ElementalGear.Obi}
	sets.midcast.DarkNukes = {waist=ElementalGear.Obi,head=ElementalGear.Head,ring2=ElementalGear.RingDark}
	sets.midcast.LightNukes = {waist=ElementalGear.Obi,ring2=ElementalGear.RingLight}
	
Majesty_info_1 = texts.new('${text}', {
    pos = {
        x = 681,
        y = 765,
    },
	bg = {
		alpha   = 150,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
Majesty_info_2 = texts.new('${text}', {
    pos = {
        x = 788,
        y = 765,
    },
	bg = {
		alpha   = 150,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
Majesty_info_1:show()
Majesty_info_2:show()
update_Majesty_panel()

remedy_box = texts.new('', {
    pos = {x = 555, y = 930},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
panacea_box = texts.new('', {
    pos = {x = 555, y = 880},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
holywater_box = texts.new('', {
    pos = {x = 561, y = 830},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile_box = texts.new('', {
    pos = {x = 550, y = 965},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile1_box = texts.new('', {
    pos = {x = 532, y = 980},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
InstantWarp_box = texts.new('', {
    pos = {x = 680, y = 1068},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})

Item_box = texts.new('${text}', {
    pos = {
        x = 1215,
        y = 930,
    },
    bg = {
        alpha = 190,
    },
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
        draggable = false,
    }
})

Item_box:show()
remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()


update_item_boxes()
count_item()
end

function precast(spell) --, "==" indicates "Is", "~=" indicates "Is not", See examples in RDM.lua
    if sets.ja[spell.name] then
		equip(sets.ja[spell.name]) 
	else if  spell.type == 'JobAbility' then
		equip(sets.ja.Enmity)
	end
end
    if  spell.action_type == 'Magic' then --, All magic types uses assigned set
		equip(sets.precast.fastcast)
	end
    if sets.ws[spell.name] then
        if Tank_Mode == false then
            equip(sets.ws[spell.name])
        else
            equip(set_combine(sets.ws[spell.name], sets.TankWS))
        end
    end

    if spell.name == 'Atonement' then
        equip(sets.ws['Atonement'])
    end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
end


function midcast(spell) --, Midcast works in hierachy. The lower on the list the higher priority when using lazy If/End statements, otherwise when using If/Else/End, "Else" takes priority. See RDM lua for examples
    if  spell.action_type == 'Magic' then
        equip(sets.midcast.sird)
	end
	if spell.skill == "Blue Magic" then	
		equip(sets.midcast.BLUEnmitySIRD)
	end	
	if spell.name:match('Poison') then  
		equip(sets.midcast.enmity)
	end	
	if T{'Flash','Stun','Banish','Foil',}:contains(spell.name) then
		equip(sets.midcast.MaxEnmity)
	end
	if T{'Crusade','Enlight II'}:contains(spell.name) or spell.name:match('Bar') then
		equip(sets.midcast.enhancingduration)
	end
	if spell.name:match("Protect") or spell.name:match("Shell") then
		equip(sets.midcast["Protect"])
	end
	if spell.name:match('Phalanx') then
		if player.status == "Idle" and player.tp < 500 then
			equip (sets.midcast.PhalanxOutOfCombat) else
		if player.status == "Engaged" then		
			equip(sets.midcast.phalanx)
		end
	end
end
    if T{'Magic Fruit','Wild Carrot','Healing Breeze','Cure','Cure II','Cure III','Cure IV','Cura','Curaga III'}:contains(spell.name) then
			equip(sets.Cure[Cure_Set_Names[Cure_Index]])
		end
	if T{'Stoneskin','Aquaveil','Banishga'}:contains(spell.name) then
			equip(sets.midcast.sird)
		end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end

	if T{'Sleep','Bind','Absorb-TP','Absorb-DEX',}:contains(spell.name) then
		equip(sets.midcast.MACC)
	end
	if T{'Reprisal'}:contains(spell.name) then
	equip(sets.midcast["Reprisal"])
	end
	if T{'Holy','Holy II','Banish II'}:contains(spell.name) then	
	equip(sets.midcast.MAB)
	end
end 



function aftercast(spell) --, idle() makes the aftercast use the "Idle ()" states.
	idle()
	equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	equip(sets.Shield[Shield_Set_Names[Shield_Index]])
    send_command('wait 5; gs c check_combat_set')
	update_item_boxes()
end

function buff_change(buff,gain) --, See list of buff names under Gearswap libraries, or just check name in-game when they are active
	if buff == "sleep" then
		if gain then
            equip(set_combine(sets.MEVA, sets.buff.Sleep))
             	disable('head')
        	else
            	enable('head')
            status_change(player.status)
		end
	end
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','neck')
        else
            enable('ring1','ring2','neck')
            status_change(player.status)
        end
    end
    if buff == 'Majesty'
    or buff == 'Phalanx' 
    or buff == 'Reprisal'
    or buff == 'Enmity Boost' then
        update_Majesty_panel()
    end
end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if Tank_Mode == true then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
		end
	end
	if player.status =='Idle' then --, When holstering weapon
		if Tank_Mode == true then
			equip(sets.run[Run_Set_Names[Run_Index]])
	elseif DD_Mode == true then
			equip(sets.run.DD_Idle)
		end
	end
end


function status_change(new,old) --, Checks player status when changing, is necessary to auto-equip from Idle mode to Engaged
	idle()
     update_Majesty_panel()
	update_item_boxes()
end


Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Tank_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Tank_Mode_ind = Tank_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end 
			windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			--end
		elseif Tank_Mode == false then
			if DD_Mode == true then
				DD_Mode_ind = DD_Mode_ind + 1
				if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
				windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
				--if player.status == 'Engaged' then
						equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		Tank_Mode_ind = Tank_Mode_ind + 1
		if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
		windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if Tank_Mode == true then
			Tank_Mode = false
			windower.add_to_chat('<----- Tanking Mode: [Off] ----->')
        else
			Tank_Mode = true
			windower.add_to_chat('<----- Tanking Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- DD Mode: [Off] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index]..' mode')
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Idle Tank set' then
        windower.add_to_chat('Idle Tank set equipped')
		equip(sets["Idle Tank"])
	end	
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Shield set' then
        Shield_Index = Shield_Index +1
        if Shield_Index > #Shield_Set_Names then Shield_Index = 1 end
        windower.add_to_chat('Shield is now: '..Shield_Set_Names[Shield_Index])
		equip(sets.Shield[Shield_Set_Names[Shield_Index]])
	end
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
	end
	if command == 'toggle Holy Water' then
        windower.add_to_chat("Using Holy Water")
		send_command ("input /item 'Holy Water' <me>")
	end
	if command == 'toggle Remedy' then
        windower.add_to_chat("Using Remedy - Removes Blind, Paralyze, Poison, Silence, and potentially Disease.")
		send_command ("input /item 'Remedy' <me>")
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Emergency MEVA/DT On')
		equip(sets.MEVA)
	end
	if command == 'toggle Idle Tank' then
        windower.add_to_chat('Idle Tank +11 Block')
		equip(sets["Idle Tank"])
	end
	if command == 'toggle Cure set' then
        Cure_Index = Cure_Index +1
    if Cure_Index > #Cure_Set_Names then Cure_Index = 1 end
        windower.add_to_chat('Cure mode is now: '..Cure_Set_Names[Cure_Index])
	end
	if command == 'react_return' then
        windower.add_to_chat('Phalanx Received - Equipping last engaged Set')
		idle()
	end
    if command == 'check_combat_set' then
        check_combat_set()
        return
	end
end

-- windower.register_event('prerender', function()
    -- if os.clock() > (tickdelay or 0) then
        -- if player.status=='Engaged' and not buffactive['Majesty'] and not midaction() and not buffactive['Amnesia'] then
            -- send_command('input /ja "Majesty" <me>')
            -- tickdelay = os.clock() + 5
        -- end
    -- end
-- end)

-- function job_tick()
    -- if check_Majesty() then return true end
    -- return false
-- end

-- function check_Majesty()
    -- if player.status=='Engaged' and not buffactive['Majesty'] and not midaction() and not buffactive['Amnesia'] then
        -- send_command('input /ja "Majesty" <me>')
        -- tickdelay = os.clock() + 5
        -- return true
    -- end
    -- return false
-- end

function check_combat_set()
    if player.status == 'Engaged' then
        if Tank_Mode == true then
            equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
        elseif DD_Mode == true then
            equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
        end
    end
	if player.status =='Idle' then --, When holstering weapon
		if Tank_Mode == true then
			equip(sets.run[Run_Set_Names[Run_Index]])
	elseif DD_Mode == true then
			equip(sets.run.DD_Idle)
		end
	end
end

function update_Majesty_panel()

	local phalanx   = buffactive['Phalanx']
	local crusade = buffactive['Enmity Boost']
	local majesty = buffactive['Majesty']
	local reprisal = buffactive['Reprisal']

     Majesty_info_1:text(string.format(
        'Majesty: %s\nPhalanx: %s',
        majesty and '\\cs(0,255,0)>ON<\\cr' or '\\cs(255,0,0)<OFF>\\cr',
        phalanx and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
    ))
    Majesty_info_2:text(string.format(
        'Crusade: %s\nReprisal: %s',
        crusade and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        reprisal and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
    ))

end
function count_item(name)
    local item = res.items:with('en', name)
    if not item then return 0 end

    local inv = windower.ffxi.get_items('inventory')
    local count = 0

    for i = 1, inv.max do
        local slot = inv[i]
        if slot and slot.id == item.id then
            count = count + slot.count
        end
    end

    return count
end
function update_item_boxes()

    remedy_box:text(('Rem: %d'):format(count_item('Remedy')))
    panacea_box:text(('Pan: %d'):format(count_item('Panacea')))
    holywater_box:text(('HW: %d'):format(count_item('Holy Water')))
    vile_box:text(('VElix: %d'):format(count_item('Vile Elixir')))
    vile1_box:text(('VElix +1: %d'):format(count_item('Vile Elixir +1')))
    InstantWarp_box:text(('Warp: %d'):format(count_item('Instant Warp')))
	Item_box:text(
		('Reraise : %d\n' ..
		'Hi-RR   : %d\n' ..
		'Insta RR: %d\n' ..
		'Utsusemi: %d\n' ..
		'Silent Oil: %d\n' ..
		'Prism Powder: %d\n' ..
		'Grape Daifuku: %d'):format(
			count_item('Reraiser'),
			count_item('Hi-Reraiser'),
			count_item('Instant Reraise'),
			count_item('Shihei'),
			count_item('Silent Oil'),
			count_item('Prism Powder'),
			count_item('Grape Daifuku')
		))
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind ^f7')

send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')

send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind ^f10')

send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind ^f12')

send_command('unbind Numpad1')
send_command('unbind !Numpad1')
send_command('unbind ^Numpad1')

send_command('unbind Numpad3')
send_command('unbind !Numpad3')
send_command('unbind ^Numpad3')

send_command('unbind Numpad0')
send_command('unbind !Numpad0')
send_command('unbind ^Numpad0')
send_command('unbind Numpad0')

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Item_box:destroy()
end
