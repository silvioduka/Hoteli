SELECT 
    BrojSobe = s.BrojSobe,
    NazivHotela = h.Naziv,
    BrojRezervacijaPoSobi = COUNT(k.ID)
FROM
    Sobe.Soba s
    LEFT JOIN Hoteli.Hotel h ON h.ID = s.HotelID
    LEFT JOIN Rezervacije.Rezervacija k ON k.SobaID = s.ID
GROUP BY
    s.BrojSobe,
    h.Naziv