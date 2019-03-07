SELECT 
    htl.Naziv,
    sadhtl.OpisSadrzajaHotela,
    sadhtl.NadoplataSadrzaja
FROM
    Hoteli.SadrzajHotelaMap shm
    LEFT JOIN Hoteli.Hotel htl ON htl.ID = shm.HotelID
    LEFT JOIN Hoteli.SadrzajHotela sadhtl ON sadhtl.ID = shm.SadrzajHotelaID