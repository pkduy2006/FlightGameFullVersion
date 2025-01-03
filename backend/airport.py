class Airport:
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg):
        self.name = name
        self.iso_country = iso_country
        self.municipality = municipality
        self.country = country
        self.ident = ident
        self.latitude_deg = latitude_deg
        self.longitude_deg = longitude_deg

class Stronghold(Airport):
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg, troops):
        self.troops = troops
        super().__init__(name, iso_country, municipality, country, ident, latitude_deg, longitude_deg)

class Depot(Airport):
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg, reserves):
        self.reserves = reserves
        super().__init__(name, iso_country, municipality, country, ident, latitude_deg, longitude_deg)

class Abandoned(Airport):
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg):
        super().__init__(name, iso_country, municipality, country, ident, latitude_deg, longitude_deg)

class Base(Airport):
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg):
        super().__init__(name, iso_country, municipality, country, ident, latitude_deg, longitude_deg)

class Target(Airport):
    def __init__(self, name, iso_country, municipality, country, ident, latitude_deg, longitude_deg):
        super().__init__(name, iso_country, municipality, country, ident, latitude_deg, longitude_deg)