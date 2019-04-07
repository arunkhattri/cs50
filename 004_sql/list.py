import os
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
import pandas as pd
# import psycopg2

# conn = psycopg2.connect("dbname=postgres user=postgres password=8@ttle#1eld5")

engine = create_engine('postgresql://postgres:8@ttle#1eld5@localhost:5432/postgres')


# engine = create_engine(os.getenv("DATABASE_URL"))
db = scoped_session(sessionmaker(bind=engine))

def flight_table():
    flight_dict = {'origin': [], 'destination': [], 'duration': []}
    flights = db.execute(
        "SELECT origin, destination, duration FROM flights"
    ).fetchall()
    for flight in flights:
        # print(f"{flight.origin} to {flight.destination}, {flight.duration} minutes.")
        flight_dict['origin'].append(flight.origin)
        flight_dict['destination'].append(flight.destination)
        flight_dict['duration'].append(flight.duration)

    flight_df = pd.DataFrame.from_dict(flight_dict)
    print(f"\n{flight_df}")
    # print(flight_dict)
        



if __name__ =="__main__":
    flight_table()
