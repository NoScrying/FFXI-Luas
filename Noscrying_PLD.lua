function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	
	send_command('bind f10 gs c toggle run set') 
	send_command('bind !f10 gs c toggle Idle Tank set') 

	send_command('bind f12 gs c toggle TH set') 
	send_command('bind ^f12 gs c toggle Cure set') 
	
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Shield set') 
	send_command('bind ^f7 gs c toggle Sub_Weapons set') 
	
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad1 gs c toggle Holy Water')
	
	send_command('bind !numpad3 gs c toggle Echo Drops')
	
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind ^numpad0 gs c toggle Idle Tank')
	
	send_command('bind !pause input //send Nolyte /Savage Blade')
	
	Run_Index = 1 --, Index for gearsets, needed for when there is more than 1 in a set and you wish you toggle beween them
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Shield_Index = 1	
	Buff_Index = 1	

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}

	Weapons_Set_Names = {'Burtgang',"Naegling","Malignance Sword",} --, 'Caladbolg','Sakpata''Excalibur'
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
	Shield_Set_Names = {'Aegis','Duban','Blurred +1'} --, 'Lycurgos'
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
	Sub_Weapons_Set_Names = {'Malevolence',} --, 'Lycurgos'
	sets.sub_weapons = {}
	sets.sub_weapons.Tauret = {
    main={ name="Malevolence", augments={'INT+10','Mag. Acc.+10','"Mag.Atk.Bns."+10','"Fast Cast"+5',}},
	sub="Blurred Shield +1",
	}	
	sets.ranged = {}
	sets.ranged.precast = {
	ranged="Ullr",
    ammo="Chapuli Arrow",
	}
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {"Damage","Hybrid"}--,"Glass Cannon"
	DD_Mode_ind = 1

	sets.DD_Mode["Hybrid"] = { --, 2898 HP,
    ammo="Staunch Tathlum +1",
    head="Chevalier's Armet +2",priority=15,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Moonlight Ring", priority=13,
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}
	sets.DD_Mode["Damage"] = { --, 2625 HP,
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
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}
	
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {"DEF",'Block',"Magic Absorb/Annul"} --,Hybrid
	Tank_Mode_ind = 1
	
	sets.Tank_Mode["DEF"] = { --,3118 HP, 684 MEVA, -12% Enemy Crit Rate, -56% DT
    ammo="Eluder's Sachet",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, Priority=19,
    waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, Priority=18,
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Fortified Ring",
    right_ring="Lehko's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.Tank_Mode["Block"] = { --, 3078 HP, -51% DT, -12% Enemy Crit Rate, Block+6 (missing +5 from Ambu Cape), +20 Ele
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=15,
    body="Adamantite Armor",priority=18,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=19,
	
    -- neck={ name="Unmoving Collar +1", augments={'Path: A',}},priority=17,
    -- waist="Carrier's Sash",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
	
    left_ear="Thureous Earring",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Fortified Ring",
    right_ring="Lehko's Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.Tank_Mode["Magic Absorb/Annul"] = { --, 3063 HP, 684 MEVA, +5% Absorb Magic, +5% Annul Magic,
    ammo="Staunch Tathlum +1",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Sanare Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Shadow Ring",
    right_ring="Moonlight Ring",
    back="Null Shawl",
	}


	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { --, 2942 HP, 690 MEVA, +54MDB, +20 Ele, 5% Magic Absorb, 5% Magic Annul, 5% Magic Scherzo, -59% DT
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Adamantite Armor", priority=19,
    hands="Sakpata's Gauntlets",priority=16,
    legs="Sakpata's Cuisses",priority=17,
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear="Sanare Earring",
	right_ear="Tuisto Earring", priority=18,
    left_ring="Shadow Ring",
    right_ring="Purity Ring",
    back="Null Shawl",
	}	
		
	Run_Set_Names = {'DT','Idle Tank','Refresh','Regen'}
	sets.run = {}
	sets.run.DT =  { --, 3074 HP, 678 MEVA, +20 Ele, Refresh +2, Regen +3, -50% DT
    ammo="Eluder's Sachet",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings", priority=17,
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, priority=16,
	right_ear="Tuisto Earring", priority=18,
    left_ring="Fortified Ring",
    right_ring="Shadow Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.run.Regen =  { --, 3157 HP, 572 MEVA, +2 Refresh, +33 Regen, -22% DT
    ammo="Homiliary",
    head="Null Masque", Priority=17,
    body="Sacro Breastplate",priority=18,
    hands="Regal Gauntlets",priority=19,
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, priority=16,
	right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.run.Refresh =  { --, 3141 HP, 479 MEVA, +8 Refresh, +3 Regen, -32% DT
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
    ammo="Eluder's Sachet",
    head="Null Masque", Priority=17,
    body="Adamantite Armor", priority=16,
    hands="Sakpata's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Null Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, priority=16,
	right_ear="Chevalier's Earring",
    left_ring="Fortified Ring",
    right_ring="Shadow Ring",
    back="Null Shawl",
	}	

	sets.run["Idle Tank"] = {
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=18,
    body="Adamantite Armor",priority=19,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=17,
    neck="Warder's Charm +1",
    --waist="Plat. Mog. Belt",priority=20,
	waist="Null Belt",priority=20,
    left_ear="Thureous Earring",
	right_ear="Chevalier's Earring",
    left_ring="Fortified Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=15,
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	
	sets["Idle Tank"] = {
    ammo="Eluder's Sachet",
    head="Chevalier's Armet +2",priority=18,
    body="Adamantite Armor",priority=19,
    hands="Chevalier's Gauntlets +2",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},priority=17,
    neck="Warder's Charm +1",
    --waist="Plat. Mog. Belt",priority=20,
	waist="Null Belt",priority=20,
    left_ear="Thureous Earring",
	right_ear="Chevalier's Earring",
    left_ring="Fortified Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=15,
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

	sets.CureHP = {						--, +715HP
	right_Ear="Magnetic Earring",
    left_ear="Odnowa Earring +1",	priority=20, 	--, +110HP
	left_ring="Moonlight Ring",		priority=19,	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
	}	
	sets.TankHP = {						--, +595HP
    neck="Unmoving Collar +1",priority=19, 		--, +200HP
	waist="Platinum Moogle Belt",priority=20, 	--, +270-400HP'ish
    left_ear="Odnowa Earring +1",priority=17, 	--, +110HP
	right_ear="Tuisto Earring", priority=18, 	--, +150HP
	}
	sets.TankEnmity = {					--, +395HP
	waist="Platinum Moogle Belt",priority=20,	--, +270-400HP'ish
    left_ear="Odnowa Earring +1",priority=18, 	--, +110HP
	right_ear="Tuisto Earring", priority=18,	--, +150HP
	}
	sets.TankFoil = {					--, +260HP
    left_ear="Odnowa Earring +1",priority=19, 	--, +110HP
	right_ear="Tuisto Earring", priority=18,	--, +150HP
	}
	sets.TankWS = {						--, +595HP
    neck="Unmoving Collar +1",priority=19, 		--, +200HP
	waist="Platinum Moogle Belt",priority=20, 	--, +270-400HP'ish
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
    left_ring="Ifrit Ring +1",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}


	sets.ws.epami = {
	right_ring="Epaminondas's Ring",	
	}
	
	sets.ws['Spinning Slash']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Sroda Ring",
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
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
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
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
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
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Torcleaver']	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Moonlight Ring", priority=13,
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	

	sets.ws['Atonement']	= { --,3165HP, +119 Enmity +23 Burtgang +30 Crusade = +172% Enmity -> 1K - 1638CE + 4914VE <> 2K - 2047CE + 6142VE <> 3K - 2457CE + 7371VE 
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
    body="Sakpata's Plate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Knights of Round"]	= {
    ammo="Oshasha's Treatise",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Sakpata's Plate",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Sakpata's Cuisses",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Ifrit Ring +1",
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
    right_ring="Lehko's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= { 	--, Mix MACC and MAB for high Drain rate
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Sulev. Leggings +2",
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

	sets.ja = {} 					-- Leave this empty
sets.ja.Enmity = { --, 3075 HP, +130 Enmity +23 Burtgang +30 Crusade = +183% Enmity
    ammo="Sapience Orb",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body="Souveran Cuirass +1", priority=16,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=14,
    legs="Souveran Diechlings +1",priority=15,
	feet="Chevalier's Sabatons +2",priority=13,
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Trux Earring",
    right_ear="Tuisto Earring",
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
	}
	sets.ja.DD_Enmity = {
    ammo="Sapience Orb",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body="Souveran Cuirass +1", priority=16,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=14,
    legs="Souveran Diechlings +1",priority=15,
	feet="Chevalier's Sabatons +2",
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Trux Earring",
    right_ear="Cyptic Earring",
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
	feet="Cab. Leggings +1",
	})
	sets.ja['Cover'] = set_combine(sets.ja.Enmity, {
	body="Caballarius Surcoat", priority=16,
	})
	sets.ja['Chivalry'] = set_combine(sets.ja.Enmity, {
    hands="Caballarius Gauntlets +3",
	})
	sets.ja['Shield Bash'] = set_combine(sets.ja.Enmity, {
    hands="Caballarius Gauntlets +3",
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
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, priority=16,
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
    left_ear="Odnowa Earring +1", priority=17,
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Moonlight Ring", priority=13,
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, priority=17,
    back="Null Cape",
	})
	sets.midcast.BLUEnmitySIRD = set_combine(sets.ja.Enmity, { 
    -- ammo="Staunch Tathlum +1",	--, +106% SIRD, 3041 HP, +85 Enmity, -15% DT
    -- head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=15,
    -- body="Souveran Cuirass +1", priority=16,
    -- hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=14,
    -- legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
    -- feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=17,
    -- neck="Moonlight Necklace",
    -- waist="Audumbla Sash",
    -- left_ear="Magnetic Earring",
    -- right_ear="Trux Earring",
    -- left_ring="Apeile Ring +1",
    -- right_ring="Apeile Ring",
    -- back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	
    ammo="Staunch Tathlum +1", --, +104% SIRD, 3091 HP, +40 Enmity +23 Burgang +30 Crusade = 93% Enmity, -51% DT
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=19,
    body="Adamantite Armor", priority=20,
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, priority=18,
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}},
	feet="Chevalier's Sabatons +2",priority=17,
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Magnetic Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}}, priority=16,
    left_ring="Defending Ring",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	})
	sets.midcast.enmity = set_combine(sets.ja.Enmity, {
	})
	sets.midcast.MaxEnmity = set_combine(sets.ja.Enmity, {
	})
	sets.midcast.Foil = set_combine(sets.ja.Enmity, {
	})
	
	sets.midcast.phalanx = { --, +25 Phalanx, Enhancing Skill 387 = 31 Phalanx, 3239 HP, -41% DT
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
    left_ring="Defending Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, priority=17,
    back={ name="Weard Mantle", augments={'VIT+4','DEX+1','Enmity+4','Phalanx +5',}},
	}
	sets.midcast.PhalanxOutOfCombat = set_combine(sets.midcast.phalanx, { --, +30 Phalanx, Enhancing Skill 387 = 31 Phalanx, 3129 HP, -41% DT
	main="Sakpata's Sword",
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
    left_ring="Defending Ring",
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
    hands="Nyame Gauntlets",
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
    left_ring="Defending Ring",
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
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end
function precast(spell) --, "==" indicates "Is", "~=" indicates "Is not", See examples in RDM.lua
    if  spell.type == 'JobAbility' then
		equip(sets.ja.Enmity)
			elseif sets.ja[spell.name] then
		equip(sets.ja[spell.name]) 
	end	
    if  spell.action_type == 'Magic' then --, All magic types uses assigned set
		equip(sets.precast.fastcast)
	end
    if sets.ws[spell.name] then
		if Tank_Mode == false then
			equip(sets.ws[spell.name])
				elseif Tank_Mode == true then
					equip(set_combine(sets.ws[spell.name], sets.TankWS))
				if sets.ws['Atonement'] then
				equip(sets.ws['Atonement'])
			end
		end
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
	if T{'Flash','Banishga','Stun','Banish','Foil',}:contains(spell.name) then
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
	if T{'Stoneskin','Aquaveil'}:contains(spell.name) then
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
end

function buff_change(buff,gain) --, See list of buff names under Gearswap libraries, or just check name in-game when they are active
    -- if buff == 'Reive Mark' then
        -- if gain then
            -- equip(sets.buff.reive)
            -- disable("neck")
        -- else
            -- enable("neck")			
        -- end
	-- end
    --Embolden cape lock--
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
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
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
	if command == 'toggle Echo Drops' then
        windower.add_to_chat("Using Echo Drops")
		send_command ("input /item 'Echo Drops' <me>")
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
end






