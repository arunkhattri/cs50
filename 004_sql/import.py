from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
import pandas as pd
import csv

engine = create_engine('postgresql://postgres:8@ttle#1eld5@localhost:5432/postgres')

db = scoped_session(sessionmaker(bind=engine))

def import_csv():
    csv_file = "./flights.csv"
    f = open(csv_file)
    reader = csv.reader(f)
    for origin, destination, duration in reader:
        db.execute(
            "INSERT INTO flights (origin, destination, duration) VALUES (:origin, :destination, :duration)",
            {"origin": origin, "destination": destination, "duration": duration})
        print(f"Added flight from {origin} to {destination} lasting {duration}")
    db.commit()


if __name__ == '__main__':
    import_csv()
