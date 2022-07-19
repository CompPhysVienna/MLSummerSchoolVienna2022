# Statistical sampling:  Tutorial
Peter Wirnsberger, Sebastian Falkner and Alessandro Coretti <br/>
20 July 2022

## Summary 
In this tutorial, we will train the normalizing flow model proposed by [Wirnsberger et al. (2022)](https://iopscience.iop.org/article/10.1088/2632-2153/ac6b16) on a small system comprising 8 particles of monatomic water (mW) in the cubic ice phase. All the relevant code for training and evaluating the model is available on github ([deepmind/flows_for_atomic_solids](https://github.com/deepmind/flows_for_atomic_solids)), as supplemental material to the publication. 

The tutorial colab ([click to open tutorial](https://colab.sandbox.google.com/github/deepmind/flows_for_atomic_solids/blob/main/tutorial/normalizing_flows_for_atomic_solids_tutorial.ipynb#scrollTo=nDMBM1658EWE)) imports the model from github and provides the main training loop in JAX (see [JAX 101 tutorial](https://jax.readthedocs.io/en/latest/jax-101/index.html)). However, crucial parts of the logic required to train and evaluate the model are missing. The goal of this tutorial is to complete the missing bits, as described in the header of the colab, in order to train and evaluate the model.
