# global-energy/urbanisation-sql-analysis

Using two data sets from 'Our World in Data', I have chosen the following to focus on sustainability, energy and urbanisation: 

    Urbanisation Data:
      Urbanization in the long run - OWID based on the UN World Urbanization Prospects 2018 and others.csv

    Energy Data:
      owid-energy-data.csv 

**I aimed to answer the following 5 questions, extracting and manipulating from raw data in SQLite to visualisations in metabase:**

How does urbanisation level correlate with energy consumption patterns?
Are more urabnised counties transitiong to renewable energy faster?
How does rate of urbanisation affect energy demand growth?
Do more urbanized regions demonstrate better energy efficiency?
Is there a relationship between urbanization level and adoption of specific renewable technologies?

**sql Folder**

For **'energy_clean'** and **'urbanization_clean'**, both raw data files where cleaned to produce tables with only needed columns.

**'urbanization_energy'** sql query, combines the urbanization_clean and energy_clean data, matching country and year values.
It selects various urbanisation and energy metrics. 
