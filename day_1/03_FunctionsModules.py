# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
def find_motif(DNA, motif="gaatca"):
    """
    Finds a motif within a DNA sequence and returns a list of start indices
    
    Parameters
    ----------
    DNA : str
        A string containing the DNA sequence to be searched
    motif : str, optional
        The motif to be found in the DNA 

    Returns
    -------
    A list of indices highlighting the start of the motif in the DNA sequence

    """
    index = 0
    indices = []
    while index != -1:
        index = DNA.find(motif, index)
        
        if index != -1:
            indices.append(index)
            index += 1
    
    return(indices)
    
focalDNA="aaagggaggggggaggagag"
motif1="gg"
indicesGG = find_motif(DNA=focalDNA)
print(indicesGG)

help(find_motif)

# %% re-run the stuff on the slide

def some_function(x):
    x += 1
    return(x)

a = 5
a = some_function(a)
print(a)

# %% 2-d list function BETA

sequences_2d = [["ccggattc","ggggta","ggc"],["aat","agcgaccc"],["ggccccaaa"]]

def append_seq_does_nothing(list2d, z="ggtttaa"):
    """
    

    Parameters
    ----------
    list2d : list
        two-dimensional list with sequences.
    z : str, optional
        sequence to add to the front of each sequence. The default is "ggtttaa".

    Returns
    -------
    two dimensional list with updated sequences.

    """
    
    for row_i, rowvals in enumerate(list2d):
        
       for col_j, colval in enumerate(rowvals):
                      
            colval = z + colval
                        
    return(list2d)
            
            
sequences_2d_new = append_seq_does_nothing(sequences_2d)
print(sequences_2d)
print(sequences_2d_new)


# %% 2-d list function

sequences_2d = [["ccggattc","ggggta","ggc"],["aat","agcgaccc"],["ggccccaaa"]]

def add_seq_to_2d_seqs(list2d, z="ggtttaaa"):
    
    newlist = []
    
    for row in list2d:
        
        newrow = []
        
        for col in row:
                      
            newrow.append("ggtttaaa" + col)
            
        newlist.append(newrow)
            
    return(newlist)
            
            
sequences_2d_new = add_seq_to_2d_seqs(sequences_2d)
print(sequences_2d)
print(sequences_2d_new)


# %% ascii code
import re
a = "asdkjkldfjkad"

m_obj = re.search("s",a)

print(m_obj)

# %%

def func_one():
    
    print("this function is func_one")
    
    return(False)

def func_two():
    
    print("this function is func_two")
    
    return(True)


if func_two() or func_two():
    print("done")
    
#%% motif
    
    
def find_motif(DNA, motif="gaatca"):
    """
    Finds a motif within a DNA sequence and returns a list of start indices
    
    Parameters
    ----------
    DNA : str
        A string containing the DNA sequence to be searched
    motif : str, optional
        The motif to be found in the DNA sequence

    Returns
    -------
    A list of indices highlighting the start of the motif in the DNA sequence

    """
    index = 0 # set initial index at the start of the string
    indices = [] # initialize empty list to store any successful finds of motifs
    print(DNA)
    while index != -1:  # go on as long as DNA.find does not return a -1 (i.e., no motifs in remainder of DNA)
        index = DNA.find(motif, index) # find the motif
        
        
        if index != -1: # successful find of motif 
            indices.append(index) # add position at which motif was found to list of starting indices 
            index += 1 # update index used by DNA.find() to the next position, otherwise same p
    
    return(indices)


DNAstr = "aaaaccccggggtaaaa"
print(find_motif(DNA=DNAstr,motif="ggggta"))

# %% check someting

def some_func_wah():
    """
    

    Returns
    -------
    None.

    """

    Returns
    -------
    None.

    """

