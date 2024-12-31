class Airport:
    def __init__(self, name, iso, address, icao, lat, lon, type):
        self.name = name
        self.iso = iso
        self.address = address
        self.icao = icao
        self.lat = lat
        self.lon = lon
        self.type = type

class Stronghold(Airport):
    def __init__(self, name, iso, address, icao, lat, lon, type, troops):
        self.troops = troops
        super().__init__(name, iso, address, icao, lat, lon, type)

class Depot(Airport):
    def __init__(self, name, iso, address, icao, lat, lon, type, reserves):
        self.reserves = reserves
        super().__init__(name, iso, address, icao, lat, lon, type)

class Abandoned(Airport):
    def __init__(self, name, iso, address, icao, lat, lon, type):
        super().__init__(name, iso, address, icao, lat, lon, type)

class Base(Airport):
    def __init__(self, name, iso, address, icao, lat, lon, type):
        super().__init__(name, iso, address, icao, lat, lon, type)

class Target(Airport):
    def __init__(self, name, iso, address, icao, lat, lon, type):
        super().__init__(name, iso, address, icao, lat, lon, type)