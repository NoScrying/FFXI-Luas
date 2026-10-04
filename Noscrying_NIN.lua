texts = require('texts')
local res = require('resources')
include('organizer-lib')

local PaxBoost = {
    ['Pax'] = true,
    ['Enmity Boost'] = true,
}
local TankDD = {
    ['Innin'] = true,
    ['Yonin'] = true,
}
function get_sets()
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub set')
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command ("input //lua load Dressup")
	send_command('wait 1; gs c checktime')
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('bind !pageup input //send Nolyte /Savage Blade')	
	send_command('bind !pagedown input //send Kiokura /Savage Blade')
	send_command('bind !end input //send Kiokura /LeadenSalute')
	send_command('bind !delete input //send Kiokura /LastStand')
	
	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Index = 1

	sets["WarpRing"] = {
	right_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	Weapons_Set_Names = {"Naegling", "Kikoku", 'Tauret'}--,"Kaja Katana"
	sets.weapons = {}
	sets.weapons["Tauret"] = {
	main="Tauret",
	}
	sets.weapons["Kikoku"] = {
	main="Kikoku",
	}
	sets.weapons["Naegling"] = {
	main="Naegling",
	}

	Sub_Set_Names = {"Uzura +2", "Prophetic Knife", "Kunimitsu"}
	sets.Sub = {}
	sets.Sub["Prophetic Knife"] = {
	sub="Prophetic Knife",
	}
	sets.Sub["Uzura +2"] = {
	sub="Uzura +2",
	}
	sets.Sub["Kunimitsu"] = {
	sub="Kunimitsu",
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	ammo="Perfect Lucky Egg",
	waist="Chaac Belt",
	}

	Melee_Set_Names = {'Hybrid','DT'}--'normal', 
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Happo Shuriken",
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
    left_ring="Chirich Ring +1",
    right_ring="Gere Ring",
    back="Null Shawl",
	}
	sets.melee.Hybrid = {
    ammo="Happo Shuriken",
    head="Mpaca's Cap",
    body="Malignance Tabard",
    hands="Mpaca's Gloves",
    legs="Malignance Tights",
    feet="Mpaca's Boots",
    neck="Ninja Nodowa +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Chirich Ring +1",
    right_ring="Gere Ring",
    back="Null Shawl",
	}
	sets.melee.DT = {
    ammo="Happo Shuriken",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Ninja Nodowa +1",
    waist="Kentarch Belt +1",
    left_ear="Suppanomimi",
    right_ear="Alabaster Earring",
    left_ring="Chirich Ring +1",
    right_ring="Murky Ring",
    back="Null Shawl",
	}

	Run_Set_Names = {'MEVA/DT','Regen'}
	sets.run = {}
	sets.run["MEVA/DT"] =  {
    ammo="Yamarang",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Danzo Sune-Ate",
    neck="Warder's Charm +1",
    waist="Null Belt",
    left_ear="Sanare Earring",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Purity Ring",
    right_ring="Shadow Ring",
    back="Null Shawl",
	}
	sets.run["Regen"]=  {
    ammo="Yamarang",
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
	feet="Hachiya Kyahan",
	}
	sets.ws = {} -- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Seeth. Bomblet +1",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands="Mpaca's Gloves",
    legs="Mochi. Hakama +3",
    feet="Hattori Kyahan +2",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
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
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Blade: Ten'] = {
    ammo="Seeth. Bomblet +1",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands="Mpaca's Gloves",
    legs="Mochi. Hakama +3",
    feet="Hattori Kyahan +2",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}	
	sets.ws['Blade: Hi'] = {
    ammo="C. Palug Stone",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands="Mpaca's Gloves",
    legs="Mochi. Hakama +3",
    feet="Hattori Kyahan +2",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back="Sacro Mantle",
	} 
	sets.ws['Blade: Jin'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Mpaca's Cap",
    body="Olorun Harness",
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
    ammo="Seeth. Bomblet +1",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mochi. Hakama +3",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Shun'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Ilabrat Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Blade: Metsu'] = {
    ammo="C. Palug Stone",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands="Mpaca's Gloves",
    legs="Mochi. Hakama +3",
    feet="Hattori Kyahan +2",
    neck={ name="Ninja Nodowa +1", augments={'Path: A',}},
    waist="Kentarch Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Odr Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back="Sacro Mantle",
	} 
	sets.ws['Blade: Retsu'] = {
    ammo="Yamarang",
    head="Hachi. Hatsu. +4",
    body="Olorun Harness",
    hands="Malignance Gloves",
    legs="Mochi. Hakama +3",
    feet="Hattori Kyahan +2",
    neck="Null Loop",
    waist="Kentarch Belt +1",
    left_ear="Lugra Earring +1",
    right_ear="Crep. Earring",
    left_ring="Ilabrat Ring",
    right_ring="Metamor. Ring +1",
    back="Sacro Mantle",
	} 
	sets.ws['Blade: Yu'] = {
    ammo="Seeth. Bomblet +1",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Olorun Harness",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Dingir Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: Chi'] = {
    ammo="Seeth. Bomblet +1",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Olorun Harness",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
    left_ring="Dingir Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	} 
	sets.ws['Blade: To'] = {
    ammo="Seeth. Bomblet +1",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Olorun Harness",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Lugra Earring +1",
    right_ear="Moonshade Earring",
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
    feet="Nyame Sollerets",
    neck="Null Loop",
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
    left_ring="Ilabrat Ring",
    right_ring="Gere Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Aeolian Edge'] = {
    --head="White Rarab Cap +1",
    --feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Dingir Ring",
    back="Sacro Mantle",
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
    left_ring="Ilabrat Ring",
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
	
	sets.ja.WaltzSelf = set_combine(sets.melee.DT, {	
    ammo="Yamarang",
    head="Mummu Bonnet +2",
    hands="Malignance Gloves",
    legs="Dashing Subligar",
    waist="Plat. Mog. Belt",
    left_ear="Alabaster Earring",
    right_ear="Sjofn Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
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
    ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Fast Cast"+5','STR+4',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5',}},
    neck="Voltsurge Torque",
    waist="Null Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Kishar Ring",
    right_ring="Weather. Ring +1",
    back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.Utsusemi = {
    ammo="Sapience Orb",
    head="Nyame Helm",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Hattori Kyahan +2",
    neck="Loricate Torque +1",
    waist="Null Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Kishar Ring",
    right_ring="Weather. Ring +1",
    back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
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
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Hattori Kyahan +2",
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
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}

NIN_info_1 = texts.new('${text}', {
    pos = {
        x = 680,
        y = 748,
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

NIN_info_1:show()
update_nin_panel()

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

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
	if DD_Mode == true then
        equip(sets.ja.Waltz)
			-- if spell.name:match('Curing') and spell.target.type == 'SELF' then
				-- equip(sets.ja.WaltzSelf)
	elseif Tank_Mode == true then
		equip(sets.ja.TankWaltz)
		end
	end
	if sets.ws[spell.name] then
		if player.equipment.sub == "Prophetic Knife" then
			equip(set_combine(sets.ws[spell.name], {ammo="Prophetica"}))
    else
        equip(sets.ws[spell.name])
    end
end
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.midcast.MACC)
	end
    if spell.name:match('Utsusemi')then
        equip(sets.midcast.Utsusemi)
	end
	if spell.name:match('Katon') or spell.name:match('Hyoton') or spell.name:match('Raiton') or spell.name:match('Suiton') or spell.name:match('Doton') or spell.name:match('Huton') then
        equip(sets.midcast.damagespells)
    end
    if sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])
	end
end

function aftercast(spell)
 idle()
	update_item_boxes()
end
 function status_change(new,old)
 idle()
	update_item_boxes()
    update_nin_panel()
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
    if PaxBoost[buff]
    or TankDD[buff]
    or buff == 'Store TP' then
        update_nin_panel()
    end
end
 
function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
    elseif player.status =='Idle' then
        local currentTime = world.time
        -- Nighttime = 18:00 (1080) through 06:00 (360)
        if (currentTime >= (18*60)) or (currentTime < (6*60)) then
            -- Nighttime: use Hachiya Kyahan
            equip(set_combine(sets.run[Run_Set_Names[Run_Index]], {feet="Hachiya Kyahan"}))
        else
            -- Daytime: use Danzo Sune-Ate
            equip(set_combine(sets.run[Run_Set_Names[Run_Index]], {feet="Danzo Sune-Ate"}))
        end
    end
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
	if command == 'toggle Sub set' then
        Sub_Index = Sub_Index +1
    if Sub_Index > #Sub_Set_Names then Sub_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Set_Names[Sub_Index])
        equip(sets.Sub[Sub_Set_Names[Sub_Index]])
    end
	if command == 'react_return' then
        windower.add_to_chat('Phalanx received')
		idle()
	end
end

function color_TankDD(spell)

    if spell:find('Yonin') then
        return '\\cs(210,180,40)Tank\\cr'
    elseif spell:find('Innin') then
        return '\\cs(180,0,255)DD\\cr'
    end

    return spell

end
function color_PaxBoost(spell)

    if spell:find('Enmity Boost') then
        return '\\cs(255,0,0)'..spell..'\\cr'
    elseif spell:find('Pax') then
        return '\\cs(0,255,255)Enmity Down\\cr'
    end

    return spell

end
function get_current_TankDD()

    for spell in pairs(TankDD) do
        if buffactive[spell] then
            return spell
        end
    end

    return 'No Mode Active'

end
function get_current_PaxBoost()

    for spell in pairs(PaxBoost) do
        if buffactive[spell] then
            return spell
        end
    end

    return 'No Pax or Boost'

end
function update_nin_panel()

    local PaxBoost = color_PaxBoost(get_current_PaxBoost())
    local TankDD = color_TankDD(get_current_TankDD())
    local STP = buffactive['Store TP']

    NIN_info_1:text(string.format(
        'Mode: %s\nStore TP: %s\nEnmity Mode: %s',
		TankDD,
        STP and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        PaxBoost

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

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Item_box:destroy()
end
