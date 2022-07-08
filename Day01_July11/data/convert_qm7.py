import numpy as np
import pandas as pd
import scipy.io

data = scipy.io.loadmat("/home/mscherbela/Downloads/qm7.mat")

df = pd.DataFrame(data['X'].reshape([-1, 23*23]))
df['energy'] = data['T'].flatten()
df.to_csv("/home/mscherbela/Downloads/qm7.csv", index=False)

#%%


