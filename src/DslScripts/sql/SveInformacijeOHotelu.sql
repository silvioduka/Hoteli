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
                LEFT JOIN Informacije.HotelInfo hinfo ON hinfo.ID = hot.HotelInfoID
                LEFT JOIN Informacije.OpcenitoInfo oinfo ON oinfo.ID = hinfo.ID
                LEFT JOIN Adrese.AdresaHotela adrhot ON adrhot.ID = hinfo.AdresaID
                LEFT JOIN Adrese.Geocoordinate geo ON geo.ID = adrhot.GeocoordinateID
                LEFT JOIN Adrese.Adresa adr ON adr.ID = adrhot.ID
                LEFT JOIN Adrese.Drzava drz ON drz.ID = adr.DrzavaID
                LEFT JOIN Adrese.Zupanija zup ON zup.ID = adr.ZupanijaID
                LEFT JOIN Adrese.Grad grd ON grd.ID = adr.GradID