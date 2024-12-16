function get_sets()
	send_command('bind f9 gs c toggle melee set')
	send_command('bind f10 gs c toggle Run set')
	send_command('bind f7 gs c toggle Main set')
	send_command('bind !f7 gs c toggle Sub set')
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind ^f12 gs c toggle Nuke set') 	--, ^ = CTRL
	send_command ("input //lua load SCH-hud")
	
	Melee_Index = 1
	Main_Index = 1
	Sub_Index = 1
	Run_Index = 1
	TH_Index = 1
	Buff_Index = 1
	Nuke_Index = 1
	
	Melee_Set_Names = {'melee','DT',"Refresh"}
	sets.melee = {} 
	sets.melee.melee = {
    ammo="Staunch Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
    legs="Arbatel Pants +2",
    feet="Nyame Sollerets",
    neck="Lissome Necklace",
    waist="Eschan Stone",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Lehko's Ring",
    right_ring="Chirich Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.melee.DT = {
    ammo="Staunch Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
    legs="Arbatel Pants +2",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring="Shadow Ring",
    right_ring="Purity Ring",
    back="Moonbeam Cape",
	}
	sets.melee.Refresh =  {
    ammo="Homiliary",
    head="Volte Beret",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
    legs="Assid. Pants +1",
    feet="Arbatel Loafers +2",
    neck="Sibyl Scarf",
    waist="Embla Sash",
    left_ear="Crep. Earring",
    right_ear="Savant's Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Moonbeam Cape",
	}
	sets.melee.DW = {
    ammo="Staunch Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
    legs="Arbatel Pants +2",
    feet="Nyame Sollerets",
    neck="Lissome Necklace",
    waist="Cornelia's Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}


	Run_Set_Names = {'Refresh','DT'}
	sets.Run = {}
	sets.Run.Refresh =  {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
	legs="Assiduity Pants +1",
    feet="Herald's Gaiters",
    neck="Sibyl Scarf",
	waist="Embla Sash",
    left_ear="Savant's Earring",
    right_ear="Regal Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Moonbeam Cape",
	}
	sets.Run.DT =  {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
	legs="Arbatel Pants +2",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
	waist="Embla Sash",
    left_ear="Infused Earring",
    right_ear="Regal Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
	head="White Rarab Cap +1",
    waist="Chaac Belt",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
	legs="Arbatel Pants +2",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	Main_Set_Names = {"Pedagogy Staff","Mpaca","Daybreak"}--Bunzi,  'Malignance'
	sets.Main = {}
	sets.Main["Pedagogy Staff"] = {
    main="Pedagogy Staff",priority=15,
    sub="Khonsu",priority=19,
	}
	sets.Main["Mpaca"] = {
	main="Mpaca's Staff",priority=19,
	sub="Khonsu",priority=15,
	}	
	sets.Main["Daybreak"] = {
    main="Daybreak",priority=19,
	sub="Ammurapi Shield",priority=15,
	}	
	Sub_Set_Names = {"Bunzi's Rod",'Maxentius'}
	sets.Sub = {}
	sets.Sub["Bunzi's Rod"] = {
    main="Bunzi's Rod",priority=19,
	sub="Ammurapi Shield",priority=15,
	}
	sets.Sub["Maxentius"] = {
    main="Maxentius",priority=19,
	sub="Ammurapi Shield",priority=15,
	}
	
	sets.ws = {}
	sets.ws['Black Halo']	= {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Nyame Mail",
    hands="Jhakri Cuffs +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Regal Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Nyame Mail",
    hands="Jhakri Cuffs +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Regal Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.ws['Flash Nova']	= {
	ammo="Ginsen",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Strendu Ring",
    right_ring="Weatherspoon Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shell Crusher'] = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs="Arbatel Pants +2",
    feet="Arbatel Loafers +2",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Kishar Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}	
	sets.ws['Retribution'] = {
	ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Jhakri Cuffs +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.ja = {} 
	sets.ja['Sublimation'] = {
	waist="Embla Sash",
	}
	sets.ja['Klimaform'] = {
	ammo="Impatiens",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet="Arbatel Loafers +2",
	waist="Embla Sash",
    neck="Sibyl Scarf",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},

	}
	sets.ja['Ebullience'] = {
    head="Arbatel Bonnet +2",
	}
	sets.ja['Rapture'] = {
    head="Arbatel Bonnet +2",
	}	
	sets.ja['Perpetuance'] = {
	main="Pedagogy Staff",
	sub="Khonsu",
	hands="Arbatel Bracers +2",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	}
	sets.ja['Accession'] = {
	main="Pedagogy Staff",
	sub="Khonsu",
	}
	sets.ja['Penury'] = {
	legs="Arbatel Pants +2",
	}
	sets.ja['Parsimony'] = {
	legs="Arbatel Pants +2",
	}
	
	sets.idle = {} 
	sets.idle.normal = {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
	legs="Arbatel Pants +2",
    feet="Herald's Gaiters",
    neck="Warder's Charm +1",
	waist="Embla Sash",
    left_ear="Infused Earring",
    right_ear="Malignance Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Moonbeam Cape",
	}
	
	sets.precast = {} 
	sets.precast.fastcast = {	--78
    ammo="Sapience Orb", 		--2
    head="Amalric Coif +1",		--10
    body="Pinga Tunic",			--13
    hands="Pinga Mittens",		--5
    legs="Pinga Pants",			--11
    feet="Pinga Pumps",			--3
    neck="Voltsurge Torque",	--4
    waist="Embla Sash",			--5
    left_ear="Malignance Earring",	--4
    right_ear="Loquac. Earring",	--2
    left_ring="Kishar Ring",	--4
    right_ring="Weatherspoon Ring +1",	--5
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.enfeebling = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet="Arbatel Loafers +2",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Kishar Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.midcast.MACC = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet="Arbatel Loafers +2",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Kishar Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.midcast.Drain = {	
    ammo="Ghastly Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
	legs="Arbatel Pants +2",
    feet="Agwu's Pigaches",
    neck="Erra Pendant",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	
	sets.midcast.enhancingduration = {
	main="Pedagogy Staff",priority=15,
	sub="Khonsu",priority=10,
    ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Embla Sash",
    neck="Incanter's Torque",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.enhancingskill = {
	main="Pedagogy Staff",priority=15,
	sub="Khonsu",priority=10,
    ammo="Staunch Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Chironic Gloves",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Andoaa Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}	
 	sets.midcast.regen = {
	main="Pedagogy Staff",priority=15,
	sub="Khonsu",priority=10,
    ammo="Staunch Tathlum +1",
    head="Arbatel Bonnet +2",
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Telchine Gloves", augments={'"Regen" potency+3',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Embla Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back={ name="Bookworm's Cape", augments={'INT+3','MND+2','Helix eff. dur. +20','"Regen" potency+9',}},
	}	
	
	sets.midcast.refresh = {
    ammo="Impatiens",
	head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
	waist="Gishdubar Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring="Evanescence Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
	}
	sets.midcast.Aquaveil = {
    ammo="Impatiens",
	head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
	waist="Emphatikos Rope",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring="Evanescence Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
	}	
	sets.midcast.cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    neck="Incanter's Torque",
    waist={ name="Shinjutsu-no-Obi +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Defending Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back="Moonbeam Cape",
	}

	sets.midcast.dark = {
    ammo="Sroda Tathlum",
    head="Pixie Hairpin +1",
    body="Arbatel Gown +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	legs="Arbatel Pants +2",
    feet="Arbatel Loafers +2",
    neck="Mizu. Kubikazari",
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Mujin Band",
    right_ring="Archon Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.light = {
    ammo="Sroda Tathlum",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	legs="Arbatel Pants +2",
    feet="Arbatel Loafers +2",
    neck="Mizu. Kubikazari",
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Mujin Band",
    right_ring="Weatherspoon Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	Nuke_Set_Names = {'Nukes',"MB - With Bunzi", "MB - Without Bunzi"}
	sets.Nuke = {}
	sets.Nuke.Nukes = {
    ammo="Sroda Tathlum",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs="Arbatel Pants +2",
    feet="Arbatel Loafers +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Metamorph Ring +1",
    right_ring="Freke Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Nuke["MB - With Bunzi"] = { 
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Arbatel Bonnet +2",
    body="Agwu's Robe",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Agwu's Slops",
    feet="Arbatel Loafers +2",
    neck="Mizu. Kubikazari",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Metamorph Ring +1",
    right_ring="Freke Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}
	sets.Nuke["MB - Without Bunzi"] = { 
    ammo="Sroda Tathlum",
    head="Agwu's Cap",
    body="Agwu's Robe",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Agwu's Slops",
    feet="Arbatel Loafers +2",
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Metamorph Ring +1",
    right_ring="Freke Ring",
    back="Twilight Cape",
}
	sets.Nuke["Luminohelix"] = set_combine (sets.Nuke.MB, {
	left_ring = "Freke Ring",
	right_ring="Weatherspoon Ring +1",
	})
	sets.Nuke["Noctohelix"] = set_combine (sets.Nuke.MB, {
	head = "Pixie Hairpin +1",
	left_ring = "Archon Ring",
	})
	
    sets.aftercast = {}             -- leave this empty
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.Feet = "Arbatel Loafers +2"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi,feet=ElementalGear.Feet}
	
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	sets.buff.CursnaOthers = {
    neck="Debilis Medallion",
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Haoma's Ring",
    right_ring="Menelaus's Ring",
	}
	sets.buff.CursnaSelf = {
    neck="Nicander's Necklace",
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Haoma's Ring",
    right_ring="Menelaus's Ring",
	}

end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
		equip(sets.melee.DT)
	end
    if spell.skill == 'Healing Magic' then
        equip(sets.midcast.cure)
			if buffactive == "Rapture" then
				equip(sets.ja['Rapture'])
		end
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen) else	
			if T{"Aquaveil","Refresh"}:contains(spell.name) then
				equip(sets.midcast.Aquaveil) else
					if T{"Refresh"}:contains(spell.name) then
						equip(sets.midcast.Refresh) else
							if  T{"Phalanx","Bar"}:contains(spell.name) then
								equip(sets.midcast.enhancingskill) else
							if spell.skill == 'Enhancing Magic'  then
								equip(sets.midcast.enhancingduration)
						end
					end
				end
			end
		end
	if spell.name:match('Klimaform') then
		equip(sets.ja['Klimaform'])
	end
	if T{"Aspir","Aspir II","Aspir III","Drain"}:contains(spell.name) then
		equip (sets.midcast.Drain)
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.enfeebling) else
	if T{"Sleep","Sleep II","Sleepga","Sleepga II","Break","Bio","Bind","Blind","Frazzle","Dispel","Silence"}:contains(spell.name) then
		equip (sets.midcast.MACC)
	end
end
    if spell.skill == 'Elemental Magic' then
        equip(sets.Nuke[Nuke_Set_Names[Nuke_Index]])
            if world.weather_element == spell.element or world.day_element == spell.element then --, If spell matches day or zone weather, then adds below set to above set
                equip(sets.midcast.NukeWithMatchingWeather)
		end	
	end
		if spell.name:match('Noctohelix') then 
			equip(sets.Nuke["Noctohelix"])
		end
		if spell.name:match('Luminohelix') then
			equip(sets.Nuke["Luminohelix"])
		end		

		if spell.skill == 'Healing Magic' then
			equip(sets.midcast.cure)
				if buffactive == "Rapture" then
					equip(sets.ja['Rapture'])
		        if world.weather_element == spell.element or world.day_element == spell.element then
					equip(sets.midcast.NukeWithMatchingWeather)
				if spell.name:match('Cursna') and spell.target.type == 'SELF' then
					equip(sets.buff.CursnaSelf)	else
				if spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
					equip(sets.buff.CursnaOthers)
					end
				end
			end
		end
	end
end

		

function aftercast(spell)
	idle()
	equip(sets.Main[Main_Set_Names[Main_Index]])
end
 
function buff_change(buff,gain)
    if buff == 'Perpetuance' then
        if gain then
            equip(sets.ja['Perpetuance'])
            disable("main","sub","hands","Legs","Feet")
        else
            enable("main","sub","hands","Legs","Feet")
            idle()
        end
    end
end
 
function status_change(new,old)
	idle()
end


function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	end
	if player.status=='Engaged' and player.sub_job =='NIN' or player.sub_job == 'DNC' then 
        equip(sets.melee.DW)
	end
	if player.status =='Idle' then
		equip(sets.Run[Run_Set_Names[Run_Index]])
	end
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('Armor is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.Run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Main set' then
        Main_Index = Main_Index +1
    if Main_Index > #Main_Set_Names then Main_Index = 1 end
        windower.add_to_chat('Main Weapon is now: '..Main_Set_Names[Main_Index])
        equip(sets.Main[Main_Set_Names[Main_Index]])
    end
	if command == 'toggle Sub set' then
        Sub_Index = Sub_Index +1
    if Sub_Index > #Sub_Set_Names then Sub_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Set_Names[Sub_Index])
        equip(sets.Sub[Sub_Set_Names[Sub_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Nuke set' then
        Nuke_Index = Nuke_Index +1
    if Nuke_Index > #Nuke_Set_Names then Nuke_Index = 1 end
        windower.add_to_chat('Nuke mode is now: '..Nuke_Set_Names[Nuke_Index])
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
send_command ("input //lua u SCH-hud")
end
