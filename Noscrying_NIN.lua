function get_sets()
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command ("input //lua load Dressup")
	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	Weapons_Set_Names = {"Naegling", "Kikoku","Kaja Katana"}
	sets.weapons = {}
	sets.weapons["Kaja Katana"] = {
	main="Kaja Katana",
	}
	sets.weapons["Kikoku"] = {
	main="Kikoku",
	}
	sets.weapons["Naegling"] = {
	main="Naegling",
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	ammo="Perfect Lucky Egg",
	waist="Chaac Belt",
	}

	Melee_Set_Names = {'normal', 'DT', 'Hybrid'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Togakushi Shuriken",
    head="Mpaca's Cap",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Mpaca's Hose",
    --legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Ninja Nodowa +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back="Null Shawl",
	}
	sets.melee.Hybrid = {
    ammo="Togakushi Shuriken",
    head="Mpaca's Cap",
    body="Malignance Tabard",
    hands="Mpaca's Gloves",
    legs="Malignance Tights",
    feet="Mpaca's Boots",
    neck="Ninja Nodowa +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back="Null Shawl",
	}
	sets.melee.DT = {
    ammo="Togakushi Shuriken",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Ninja Nodowa +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Lehko's Ring",
    right_ring="Defending Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	Run_Set_Names = {'MEVA/DT','Regen'}
	sets.run = {}
	sets.run["MEVA/DT"] =  {
    ammo="Yamarang",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Danzo Sune-Ate",
    neck="Warder's Charm +1",
    waist="Null Belt",
    left_ear="Eabani Earring",
    right_ear="Magnetic Earring",
    left_ring="Purity Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	sets.run["Regen"]=  {
    ammo="Togakushi Shuriken",
    head="Null Masque",
    body="Hiza. Haramaki +2",
    hands={ name="Rao Kote +1", augments={'Accuracy+12','Attack+12','Evasion+20',}},
    legs="Malignance Tights",
    feet="Danzo Sune-Ate",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Eabani Earring",
    right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.run["Hachi"] = {
	feet="
	}
	sets.ws = {} -- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Hiza. Hizayoroi +2",
    feet="Hattori Kyahan +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}	
	sets.ws['Sanguine Blade'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Epaminondas's Ring",
    right_ring="Archon Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 

	sets.ws['Blade: Ku'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Hattori Kyahan +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Blade: Ten'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body={ name="Herculean Vest", augments={'DEX+15','Pet: "Store TP"+9','Weapon skill damage +3%','Accuracy+15 Attack+15','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Hiza. Hizayoroi +2",
    feet="Hattori Kyahan +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Hi'] = {
    ammo="Cath Palug Stone",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Hiza. Hizayoroi +2",
    feet="Hattori Kyahan +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	} 
	sets.ws['Blade: Jin'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Blade: Kamu'] = {
    ammo="Cath Palug Stone",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Shun'] = {
    ammo="Cath Palug Stone",
    head="Mpaca's Cap",
    body="Malignance Tabard",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Hattori Kyahan +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Blade: Metsu'] = {
    ammo="Cath Palug Stone",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body={ name="Herculean Vest", augments={'DEX+15','Pet: "Store TP"+9','Weapon skill damage +3%','Accuracy+15 Attack+15','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+27','"Triple Atk."+3','DEX+15',}},
    legs="Hiza. Hizayoroi +2",
    feet="Hattori Kyahan +2",
    neck="Ninja Nodowa +1",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Odr Earring",
    left_ring="Lehko's Ring",
    right_ring="Epaminondas's Ring",
    back="Sacro Mantle",
	} 
	sets.ws['Blade: Yu'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Epaminondas's Ring",
    right_ring="Dingir Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Chi'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Dingir Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: To'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Dingir Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Ei'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Epaminondas's Ring",
    right_ring="Archon Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	
	sets.ws['Evisceration'] = {
    ammo="Cath Palug Stone",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Aeolian Edge'] = {
    head="White Rarab Cap +1",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	ammo="Perfect Lucky Egg",
	--head={ name="Taeon Chapeau", augments={'"Mag.Atk.Bns."+18','Weapon Skill Acc.+18','AGI+10',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    --feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    --waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Dingir Ring",
    back="Argochampsa Mantle",
	}
	sets.ws['Exenterator'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body="Malignance Tabard",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Hattori Kyahan +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Provoke'] = {	
    ammo="Sapience Orb",
    head="Malignance Chapeau",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Moonlight Necklace",
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Provocare Ring",
    right_ring="Supershear Ring",
    back="Moonbeam Cape",
	}
	sets.ja['Yonin'] = set_combine (sets.ja['Provoke'] ,{	
	})
	sets.ja['Valiance'] = set_combine (sets.ja['Provoke'] ,{	
	})
	sets.ja['Vallation'] = set_combine (sets.ja['Provoke'] ,{	
	})
	sets.ja['Swordplay'] = set_combine (sets.ja['Provoke'] ,{	
	})
	sets.ja['Pflug'] = set_combine (sets.ja['Provoke'] ,{	
	})	
	sets.idle = {} 					-- Leave this empty.
	
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb",
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Impatiens",
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +3',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.Utsusemi = {
    ammo="Impatiens",
    head="Nyame Helm",
    body="Nyame Mail",
    legs="Nyame Flanchard",
	hands="Rawhide Gloves",
	feet="Hattori Kyahan +2",
    neck="Loricate Torque +1",
    waist="Null Belt",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    left_ring="Meridian Ring",
    right_ring="Evanescence Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},

	}
	
	sets.midcast.damagespells = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Crepuscular Earring",
    right_ear="Friomisi Earring",
    left_ring="Dingir Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Argochampsa Mantle",
	}
	sets.midcast.MACC = {
	ammo="Yamarang",
    head="Null Masque",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Enchanter's Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.midcast['Flash'] = set_combine (sets.ja['Provoke'] ,{	
	})	
    sets.aftercast = {}             -- leave this empty

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
    if spell.name:match('Utsusemi')then
        equip(sets.midcast.Utsusemi)
	end
	if spell.name:match('Katon') or spell.name:match('Hyoton') or spell.name:match('Raiton') or spell.name:match('Suiton') or spell.name:match('Doton') or spell.name:match('Huton') then
        equip(sets.midcast.damagespells)
    end
	if spell.name:match('Yurin') or spell.name:match('Hojo') or spell.name:match('Jubaku') then
		equip(sets.midcast.MACC)
	end
    if sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])
	end
end

function aftercast(spell)
 idle()
end
 
function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
    end
end
 
function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	end
	if player.status =='Idle' then	
		-- if world.time >= 17*60 or world.time <= 7*60 then
		-- if world.time >= (18*60) or world.time <= (6*60) then
			-- sets.Movement = set_combine(sets.Movement, sets.Movement.Night)
		-- else
			-- sets.Movement = set_combine(sets.Movement, sets.Movement.Dusk)
		-- end
	-- else
		-- sets.Movement = set_combine(sets.Movement, sets.Movement.Day)
	-- end
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end
 
function status_change(new,old)
 idle()
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Main hand is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
send_command ("input //lua u Dressup")
end
