SELECT 
                hot.Naziv,
                hot.BrojSoba,
                hot.BrojZvjezdica,
                oinfo.BrojTelefona,
                hinfo.BrojFaxa,
                oinfo.Email,
                hinfo.Web,
                adr.Ulica,
                adr.KucniBroj,
                grd.ImeGrada,
                grd.PostanskiBroj,
                zup.ImeZupanije,
                drz.ImeDrzave,
                geo.Latitude,
                geo.Longitude
        FROM 
                Hoteli.Hotel hot
                LEFT JOIN Hoteli.HotelInfo hinfo ON hinfo.ID = hot.HotelInfoID
                LEFT JOIN Hoteli.OpcenitoInfo oinfo ON oinfo.ID = hinfo.ID
                LEFT JOIN Hoteli.AdresaHotela adrhot ON adrhot.ID = hinfo.AdresaID
                LEFT JOIN Hoteli.Geocoordinate geo ON geo.ID = adrhot.GeocoordinateID
                LEFT JOIN Hoteli.Adresa adr ON adr.ID = adrhot.ID
                LEFT JOIN Hoteli.Drzava drz ON drz.ID = adr.DrzavaID
                LEFT JOIN Hoteli.Zupanija zup ON zup.ID = adr.ZupanijaID
                LEFT JOIN Hoteli.Grad grd ON grd.ID = adr.GradID