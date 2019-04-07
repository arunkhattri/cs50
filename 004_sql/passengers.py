import os
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine('postgresql://postgres:8@ttle#1eld5@localhost:5432/postgres')
db = scoped_session(sessionmaker(bind=engine))

def get_passengers():
    # List all passengers
    flights = db.execute(
        "SELECT id, origin, destination, duration FROM flights"
    ).fetchall()

    # prompt user to choose a flight
    flight_id = int(input("\nFlight ID: "))
    flight = db.execute(
        "SELECT origin, destination, duration FROM flights WHERE id = :id",
        {"id": flight_id}).fetchone()

    # Make sure flight is valid
    if flight is None:
        print("Error: No such Flight")
        return

    # List Passengers
    passengers = db.execute(
        "SELECT name FROM passengers WHERE flight_id = :flight_id",
        {"flight_id": flight_id}).fetchall()
    print("\nPassengers:")
    for passenger in passengers:
        print(passenger.name)
    if len(passengers) == 0:
        print("No passengers.")
    

if __name__ == '__main__':
    get_passengers()
