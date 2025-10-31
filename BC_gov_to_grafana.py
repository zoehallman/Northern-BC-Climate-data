''' 
Zoe Hallman, githut repo: Northern BC Climate data
Python program that converts the download url climate data to csv for grafana use

Parameters:
==========================
AT: Air Temp
PC: Precip Cumulative
SD: Snow Depth
SWE: Snow Water Equivalent
==========================
'''

# import 
from zipfile import ZipFile
from glob import glob
import os

parameters = ["AT", "PC", "SD", "SWE"]


'''unzip the result from the url curl and put in folder'''
def unzip_data(p):
    # loading the zip, create zip object and extract members to a location
 
    with ZipFile("{}.zip".format(p), 'r') as zObject: 
        zObject.extractall(path="csv_data/{}".format(p))

    os.remove("{}.zip".format(p))

'''filter climate csv data for real numbers'''
def rewrite_csv(p):

    # finding the only .csv file in the folder regardless of name
    csv_name = glob('csv_data/{}/*.csv'.format(p))[0]

    # define arrrays
    date_times = []
    value = []  #holds the parameter we are looking for

    g = open(csv_name,'r')  # g is a file handle
    ls = g.readlines() 

    # reads through csv and copies only read numbers
    for i in range(100, len(ls)):
        line = ls[i]
        d, v, non, non = line.split(',')
        if str(v) !='NaN':  
            date_times.append(d)
            value.append(float("{:.1f}".format(float(v))))

    # write to new csv file
    f = open('csv_data/{}_grafana.csv'.format(p),mode='w')     # f is a file handle, creates csv_data.txt
    f.write("Time, {} \n".format(p))
    for i in range((len(value))):
        f.write("{},{} \n".format(date_times[i], value[i]))

    f.close()

def main():
    for p in parameters:
        unzip_data(p)
        rewrite_csv(p)

if __name__ == '__main__':
    main()
    