# -*- coding: utf-8 -*-
"""
This module contains utility codes for the flask app

#TODO:
    # days_remaining():
        * display today birthday if any
        * display birthdays falling in current month
"""
from datetime import datetime

# module variables
NOW = datetime.now()
BDS = {'Minoo': "28-08-1975", 'Booboo': "14-05-2008", 'Inoo': '02-01-2013', 'Mia': '11-10-2016'}

def days_remaining():
    """
    Returns a list of tuples (name, days_remaining_in_bd)
    """
    days_to_bd = {}
    for key, value in BDS.items():
        temp_d = datetime.strptime(value, "%d-%m-%Y")
        # replace year with current year
        bd_current_year = datetime(NOW.year, temp_d.month, temp_d.day)
        # find difference
        t_diff = (NOW - bd_current_year).days
        if t_diff < 0:
            days_to_bd[key] = abs(t_diff)
        else:
            bd_next_year = datetime(NOW.year + 1, temp_d.month, temp_d.day)
            t_diff = (NOW - bd_next_year).days
            days_to_bd[key] = abs(t_diff)
    sorted_bds = sorted(days_to_bd.items(), key=lambda kv: kv[1])
    return sorted_bds
