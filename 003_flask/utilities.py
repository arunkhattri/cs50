# -*- coding: utf-8 -*-
"""
This module contains utility codes for the flask app

#TODO:
    # days_remaining():
        * display today birthday if any
        * display birthdays falling in current month
"""
from datetime import datetime


def days_remaining():
    """
    Returns a dict {name: days_remaining_in_bd}
    """
    now = datetime.now()
    bds = {'Minoo': "28-08-1975", 'Booboo': "14-05-2008", 'Inoo': '02-01-2013', 'Mia': '11-10-2016'}
    days_to_bd = {}
    for key, value in bds.items():
        temp_d = datetime.strptime(value, "%d-%m-%Y")
        # replace year with current year
        bd_current_year = datetime(now.year, temp_d.month, temp_d.day)
        # find difference
        t_diff = (now - bd_current_year).days
        if t_diff < 0:
            days_to_bd[key] = abs(t_diff)
        else:
            days_to_bd[key] = "Next year !!!"
    return days_to_bd
