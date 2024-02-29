# -*- coding: utf-8 -*-
"""
Created on Tue Oct 25 12:17:48 2022
Updated last: 20240229

Make sure the python script file itself is the same name as the .csv file you want to work up!
APL runs this using Spyder (Python 3.10)

@author: Aaron P. ledray
"""


#Importing at the header:
import csv #as we are importing a .csv file
import numpy as np #needed for ______.

#import pandas as pd #needed for ______.


import matplotlib
import matplotlib.pyplot as plt #needed for plotting!
print(matplotlib.__version__)


import os






# Set the script name, and datafile name!
script_name = os.path.basename(__file__)

# Remove the '_workup.py' suffix and add the '.csv' suffix
csv_file_name = script_name.replace('_workup.py', '.csv')

# Open the file
raw_data = open(csv_file_name, "r")

# raw_data = open("20221021_First_FeS_Reconstitution.csv","r")
# Importing and cleaning lines:
csvreader = csv.reader(raw_data)
csv_as_list = list(csvreader)
csv_as_list = [[i if i != '' else None for i in inner] for inner in csv_as_list]
# Remove elements of length 1 or 3
csv_as_list = [elem for elem in csv_as_list if len(elem) != 1 and len(elem) != 3 and len(elem) != 2 and len(elem) != 0]
all_data_imported = np.array(csv_as_list).T #should give me the transpose.
  
# assigning spectra to lists:
    
List_of_titles = []
Abs_list = []
Spectrum0_list = []
Spectrum1_list = []
Spectrum2_list = []
Spectrum3_list = []
Spectrum4_list = []
Spectrum5_list = []
Spectrum6_list = []
Spectrum7_list = []
Spectrum8_list = []
Spectrum9_list = []
Spectrum10_list = []
Spectrum11_list = []
Spectrum12_list = []
Spectrum13_list = []
Spectrum14_list = []
Spectrum15_list = []
Spectrum16_list = []
Spectrum17_list = []
Spectrum18_list = []
Spectrum19_list = []
Spectrum20_list = []
Spectrum21_list = []
Spectrum22_list = []
Spectrum23_list = []
Spectrum24_list = []
Spectrum25_list = []
Spectrum26_list = []
Spectrum27_list = []
Spectrum28_list = []
Spectrum29_list = []

for i in range((all_data_imported.shape[1]-2)): #This is a way to cutoff some wavelengths... subtract 2 from length of all_data_imported, as it has a 2-row header.
    Abs_list.append(float(all_data_imported[0, i+2]))
    Spectrum0_list.append(float(all_data_imported[1, i+2]))
    Spectrum1_list.append(float(all_data_imported[3, i+2]))
    Spectrum2_list.append(float(all_data_imported[5, i+2]))
    Spectrum3_list.append(float(all_data_imported[7, i+2]))
    Spectrum4_list.append(float(all_data_imported[9, i+2]))
    Spectrum5_list.append(float(all_data_imported[11, i+2]))
    Spectrum6_list.append(float(all_data_imported[13, i+2]))
    Spectrum7_list.append(float(all_data_imported[15, i+2]))
    Spectrum8_list.append(float(all_data_imported[17, i+2]))
    Spectrum9_list.append(float(all_data_imported[19, i+2]))
    Spectrum10_list.append(float(all_data_imported[21, i+2]))
    Spectrum11_list.append(float(all_data_imported[23, i+2]))
    Spectrum12_list.append(float(all_data_imported[25, i+2]))
    Spectrum13_list.append(float(all_data_imported[27, i+2]))
    Spectrum14_list.append(float(all_data_imported[29, i+2]))
    Spectrum15_list.append(float(all_data_imported[31, i+2]))
    Spectrum16_list.append(float(all_data_imported[33, i+2]))
    Spectrum17_list.append(float(all_data_imported[35, i+2]))
    Spectrum18_list.append(float(all_data_imported[37, i+2]))
    Spectrum19_list.append(float(all_data_imported[39, i+2]))
    Spectrum20_list.append(float(all_data_imported[41, i+2]))
    Spectrum21_list.append(float(all_data_imported[43, i+2]))
    Spectrum22_list.append(float(all_data_imported[45, i+2]))
    Spectrum23_list.append(float(all_data_imported[47, i+2]))
    Spectrum24_list.append(float(all_data_imported[49, i+2]))
    Spectrum25_list.append(float(all_data_imported[51, i+2]))
    Spectrum26_list.append(float(all_data_imported[53, i+2]))
    Spectrum27_list.append(float(all_data_imported[55, i+2]))
    Spectrum28_list.append(float(all_data_imported[57, i+2]))
#    Spectrum29_list.append(float(all_data_imported[59, i+2]))

#including background!!! This is the number of actual spectra.
for i in range(int((all_data_imported.shape[0]-1)/2)):
    List_of_titles.append(all_data_imported[((2*i)), 0])


#%%

from matplotlib.ticker import MultipleLocator


#plotting all on the same chart:
fig, ax = plt.subplots(figsize=(3, 4), dpi=300)
# ax.plot(Abs_list, Spectrum0_list, label=List_of_titles[0], color="black", linestyle="--")
# ax.plot(Abs_list, Spectrum1_list, label=List_of_titles[1], color="blue")
ax.plot(Abs_list, Spectrum2_list, label=List_of_titles[2], color="black")
#ax.plot(Abs_list, Spectrum3_list, label=List_of_titles[3], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum4_list, label=List_of_titles[4], color="blue")
ax.plot(Abs_list, Spectrum5_list, label=List_of_titles[5], color="black")
#ax.plot(Abs_list, Spectrum6_list, label=List_of_titles[6], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum7_list, label=List_of_titles[7], color="blue")
ax.plot(Abs_list, Spectrum8_list, label=List_of_titles[8], color="black")
#ax.plot(Abs_list, Spectrum9_list, label=List_of_titles[9], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum10_list, label=List_of_titles[10], color="blue")
ax.plot(Abs_list, Spectrum11_list, label=List_of_titles[11], color="black")
#ax.plot(Abs_list, Spectrum12_list, label=List_of_titles[12], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum13_list, label=List_of_titles[13], color="blue")
ax.plot(Abs_list, Spectrum14_list, label=List_of_titles[14], color="black")
#ax.plot(Abs_list, Spectrum15_list, label=List_of_titles[15], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum16_list, label=List_of_titles[16], color="grey")
ax.plot(Abs_list, Spectrum17_list, label=List_of_titles[17], color="black")
#ax.plot(Abs_list, Spectrum18_list, label=List_of_titles[18], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum19_list, label=List_of_titles[19], color="grey")
ax.plot(Abs_list, Spectrum20_list, label=List_of_titles[20], color="black")
#ax.plot(Abs_list, Spectrum21_list, label=List_of_titles[21], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum22_list, label=List_of_titles[22], color="grey")
ax.plot(Abs_list, Spectrum23_list, label=List_of_titles[23], color="black")
#ax.plot(Abs_list, Spectrum24_list, label=List_of_titles[24], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum25_list, label=List_of_titles[25], color="grey")
ax.plot(Abs_list, Spectrum26_list, label=List_of_titles[26], color="black")
#ax.plot(Abs_list, Spectrum27_list, label=List_of_titles[27], color="black", linestyle="--")
#ax.plot(Abs_list, Spectrum28_list, label=List_of_titles[28], color="grey")
#ax.plot(Abs_list, Spectrum29_list, label=List_of_titles[29], color="grey")

ax.set_title("20240222 dSiRRAPXset-heme-incubation post EDTA treatment", fontsize=10) # Main title
#fig.suptitle("Subtitle", fontsize=10)  # Adjust the fontsize as desired
ax.set_ylabel("Abs")
ax.set_xlabel("Wavelength (nm)")
ax.legend(bbox_to_anchor=(1,1),ncol=1, borderaxespad=0, loc="upper right", fontsize=5) # default for matplotlib fontsize is 10
plt.ylim([0.00, 1.2])
plt.xlim([200, 800])
ax = plt.gca()
ax.xaxis.set_major_locator(MultipleLocator(100))
ax.xaxis.set_minor_locator(MultipleLocator(20))
ax.yaxis.set_major_locator(MultipleLocator(0.2))
ax.yaxis.set_minor_locator(MultipleLocator(0.05))

#ax.annotate("Max", y)

#plotting atop each other as in stacked:
#fig, (ax1, ax2) = plt.subplots(2,1)
#ax1.plot(Abs_list, Background_list, color="black", linestyle="--")
#ax2.plot(Abs_list, Column3_list, color="red")

#plt.plot(Abs_list, Background_list)
#plt.show()


#%%

