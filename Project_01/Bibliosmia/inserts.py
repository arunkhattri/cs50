from bibliosmia.models import Authors, Books, Years
from bibliosmia import db
import csv


data_file = "./books.csv"
with open(data_file) as f:
    reader = csv.reader(f, delimiter=',')
    next(reader, None)
    counter = 0
    for isbn, title, author, year in reader:
        if Authors.query.filter_by(name=author).first() is None:
            temp_author = Authors(name=author)
            db.session.add(temp_author)
            db.session.commit()
        if Years.query.filter_by(year_pub=year).first() is None:
            temp_year = Years(year_pub=year)
            db.session.add(temp_year)
            db.session.commit()
        # add books
        ath = Authors.query.filter_by(name=author).first()
        yr = Years.query.filter_by(year_pub=year).first()
        temp_book = Books(isbn=isbn, title=title, author_id=ath.id,
                          year_id=yr.id)
        db.session.add(temp_book)
        db.session.commit()
        counter += 1
        if counter % 500 == 0:
            print(f"{counter} records written in database.")
