texts = require('texts')
local res = require('resources')
function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f7 gs c toggle Gun set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle CP set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F12 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command ("input //lua load autocor")
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('input //fastfollow min 1.5')
	send_command('input //fastfollow pauseon item')
	Melee_Index = 1
	Gun_Index = 1
	CP_Index = 1
	Weapons_Index = 1
	TH_Index = 1

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	sets.ranged = {}
	sets.ranged.normal = {
    ammo="Decimating Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chasseur's Culottes +2",
    feet="Malignance Boots",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Neritic Earring",
    right_ear="Chasseur's Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back="Null Shawl",
	}
	sets.ranged.Triple = set_combine(sets.ranged.normal, {
	legs="Oshosi Trousers",
	body="Chasseur's Frac +2",
	hands="Lanun Gants +3",
	feet="Oshosi Leggings",
	})
	sets.ranged.precast = {
    ammo="Decimating Bullet",
    head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
    body="Laksamanas Frac +3",
    hands="Lanun Gants +3",
    legs="Chasseur's Culottes +2",
    feet="Meg. Jam. +2",
    neck="Commodore Charm",
    waist="Impulse Belt",
    left_ear="Neritic Earring",
    right_ear="Chasseur's Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},
	}

	Melee_Set_Names = {'DT'}--, 'Crit','Hybrid','normal','ATK'
	sets.melee = {}                 -- Leave this empty
	sets.melee.normal = {
	}
	sets.melee.DT = {
    range="Anarchy",
    ammo="Bronze Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chasseur's Culottes +2",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.melee.Hybrid = {
	}
	sets.melee.Crit = {	
	}
	sets.melee.ATK = {
	}

	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {"Naegling - Gleti's","Naegling - Blurred","Kustawi - Nusku"} --'Evis',,'Melee''Ranged', ','Tauret'
	sets.Weapons = {}
	sets.Weapons["Kustawi - Nusku"] = {
	main="Kustawi +1",
	sub="Nusku Shield",
	}
	sets.Weapons.Tauret = {
	main="Tauret",	
	sub="Blurred Knife +1",
	}	
	sets.Weapons["Naegling - Blurred"] = {
	main="Naegling",	
	sub="Blurred Knife +1",
	}	
	sets.Weapons["Naegling - Gleti's"] = {
	main="Naegling",	
	sub="Gleti's Knife",
	}		

	
	CP_Set_Names = {'Run'}--,"Regen"
	sets.CP = {}
	sets.CP.Run = {
    head="Null Masque",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear="Brutal Earring",
    left_ring="Shneddick Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.CP.Regen = {
	}	
	Gun_Set_Names = {'Anarchy +2',"Doomsday Leaden", "Doomsday Last Stand"} -- "Doomsday Leaden", "Doomsday Last Stand"
	sets.Gun = {}
	sets.Gun["Anarchy +2"] = {
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	}
	
	sets.Gun["Doomsday Leaden"] = {
    range={ name="Doomsday", augments={'"Mag.Atk.Bns."+19','Weapon skill damage +6%','STR+19 AGI+19',}},
	}
	sets.Gun["Doomsday Last Stand"] = {
    range={ name="Doomsday", augments={'Rng.Atk.+25','Weapon skill damage +5%','DMG:+19',}},
	}	
	sets.ws = {}                    -- Leave this empty
	sets.ws['Savage Blade'] = {
	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Laksamana's Frac +3",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Chasseur's Earring",
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Evisceration'] = {
    ammo="Animikii Bullet",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Meg. Cuirie +2",
	hands="Chasseur's Gants +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
    ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Lanun Frac +3",
	hands="Chasseur's Gants +2",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Cornelia's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},

	}

	sets.ws['Requiescat'] = {
	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Lanun Frac +3",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Last Stand'] = {
    ammo="Eminent Bullet",
    head="Nyame Helm",
    body="Laksamana's Frac +3",
	hands="Chasseur's Gants +2",
    legs="Chasseur's Culottes +2",
    feet="Lanun Bottes +3",	
    neck="Iskur Gorget",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Neritic Earring",
    left_ring="Cornelia's Ring",
    right_ring="Dingir Ring",
    back="Null Shawl",
	}

	sets.ws['Wildfire'] = {
	ammo="Orichalcum Bullet",
    head="Nyame Helm",
    body="Lanun Frac +3",
	hands="Chasseur's Gants +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",	
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Cornelia's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},

	}	
	sets.ws['Hot Shot'] = {
    ammo="Eminent Bullet",
    head="Nyame Helm",
    body="Laksamana's Frac +3",
	hands="Chasseur's Gants +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",	
    neck="Iskur Gorget",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Neritic Earring",
    left_ring="Cornelia's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
	}

	sets.ws['Leaden Salute'] = {
    ammo="Orichalcum Bullet",
    head="Pixie Hairpin +1",
    body="Lanun Frac +3",
	hands="Chasseur's Gants +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",	
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Cornelia's Ring",
    right_ring="Archon Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
	}

	sets.ws['Detonator'] = {
    ammo="Eminent Bullet",
    head="Nyame Helm",
    body="Lanun Frac +3",
	hands="Meghanada Gloves +2",
    legs="Chasseur's Culottes +2",
    feet="Lanun Bottes +3",	
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Neritic Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
	}

	sets.ja = {}                    -- Leave this empty
    sets.ja["Phantom Roll"] = {
	main="Rostam",
	range="Compensator",
    head="Lanun Tricorne",
	hands="Chasseur's Gants +2",
	body="Chasseur's Frac +2",
    legs="Chasseur's Culottes +2",
	feet="Chasseur's Bottes +1",
    --neck="Regal Necklace",
	left_ring ="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    }
	sets.ja["Double-Up"] = { 
	main="Rostam",
	left_ring ="Luzaf's Ring",
	--neck="Regal Necklace",
	}
	sets.ja['Random Deal'] = {
    body="Lanun Frac +3",
	}
	sets.ja['Wild Card'] = {
    feet="Lanun Bottes +3",	
	}
	sets.ja['Fold'] = {
	hands="Lanun Gants +3",
	}
	
	sets.ja['Earth Shot'] = {
	ammo="Animikii Bullet", -- MAB
    head="Nyame Helm",
    body="Lanun Frac +3",
    hands="Nyame Gauntlets",
    feet="Lanun Bottes +3",	
	feet="Chasseur's Bottes +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
	
    -- ammo="Decimating Bullet", -- STP
    -- head="Malignance Chapeau",
    -- body="Malignance Tabard",
    -- hands="Malignance Gloves",
    -- legs="Chasseur's Culottes +2",
    -- feet="Malignance Boots",
    -- neck="Iskur Gorget",
    -- waist="Null Belt",
    -- left_ear="Crep. Earring",
    -- right_ear="Telos Earring",
    -- left_ring="Ilabrat Ring",
    -- right_ring="Crepuscular Ring",
    -- back="Null Shawl",
	}
	sets.ja['Wind Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Fire Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Water Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Thunder Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Ice Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Light Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Chasseur's Frac +2",
	hands="Chasseur's Gants +2",
    legs="Chasseur's Culottes +2",
	feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Chasseur's Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ja['Dark Shot'] = set_combine(sets.ja['Light Shot'],{
	})
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Hachirin = {
	waist="Hachirin-no-Obi",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb",
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}

    sets.idle = {}                  -- Leave this empty


    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}
	sets.precast.DT = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Epona\'s Ring",
    right_ring="Murky Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty 
	sets.midcast.Utsusemi = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
        feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Kishar Ring",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}	
    sets.aftercast = {}             -- leave this empty
 
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
	sets.buff.Sleep = {
	}
	sets.buff.Phalanx = {
	}
remedy_box = texts.new('', {
    pos = {x = 598, y = 930},
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
    pos = {x = 598, y = 880},
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
    pos = {x = 598, y = 830},
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
    pos = {x = 590, y = 965},
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
    pos = {x = 572, y = 980},
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
Food_box = texts.new('', {
    pos = {x = 1080, y = 1088},
    text = {
        font = 'Consolas',
        size = 10,
        stroke = {width = 2},
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
SneakInvisible_box = texts.new('${text}', {
    pos = {
        x = 530,
        y = 1050,
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
remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()
Food_box:show()
SneakInvisible_box:show()

update_item_boxes()
count_item()
end
 
function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
	if sets.ja[spell.name] then
		equip(sets.ja[spell.name])
    elseif spell.type == "CorsairRoll" then
        equip(sets.ja["Phantom Roll"])
    end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
	end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
end


 
function midcast(spell)
    if spell.name:match('Utsusemi')then
        equip(sets.precast.DT)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
    elseif spell.type == "CorsairRoll" then
        equip(sets.ja["Phantom Roll"])
    end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.normal)
			if buffactive["Triple Shot"] then
			equip(sets.ranged.Triple)
		end
	end
end
 
function aftercast(spell)
	idle()
	equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    equip(sets.Gun[Gun_Set_Names[Gun_Index]])
	update_item_boxes()
end
 
 
function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
	end
	if player.status =='Idle' then
		equip(sets.CP.Run)
	end

end
 
function status_change(new,old)
	idle()
	update_item_boxes()
end


function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Gun set' then
        Gun_Index = Gun_Index +1
    if Gun_Index > #Gun_Set_Names then Gun_Index = 1 end
        windower.add_to_chat('Gun is now: '..Gun_Set_Names[Gun_Index])
        equip(sets.Gun[Gun_Set_Names[Gun_Index]])
    end
	if command == 'toggle CP set' then
        CP_Index = CP_Index +1
    if CP_Index > #CP_Set_Names then CP_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..CP_Set_Names[CP_Index])
        equip(sets.CP[CP_Set_Names[CP_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
    if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'react_return' then
        windower.add_to_chat('Phalanx received')
		idle()
	end
    if command == 'darkthorn' then
        send_command("input /DarkShot <bt>")
    end
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
    Food_box:text(('Grape Daifuku: %d'):format(count_item('Grape Daifuku')))
	SneakInvisible_box:text(
		('Silent Oil : %d\nPrism Powder: %d'):format(
			count_item('Silent Oil'),
			count_item('Prism Powder')
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
send_command ("input //lua u autocor")

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Food_box:destroy()
SneakInvisible_box:destroy()
end
