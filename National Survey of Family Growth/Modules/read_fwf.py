import re
import numpy as np
import pandas as pd


class FixedWidthFiles(object):
    """read data from fixed width variable files"""

    def __init__(self, variables, index_base=0):
        """
        :param variables: DataFrame
        :param index_base: are the indices 0 or 1 based?

        :attr colspecs list of index tuples
        :attr names list of string variable names
        """

        self.variables = variables
        self.colspecs = variables[['start', 'end']] - index_base

        # convert colspecs to a list of pair of int
        self.colspecs = self.colspecs.astype(np.int).values.tolist()
        self.names = variables['name']

    def ReadFixedWidth(self, filename, **options):
        """reads a fixed width ASCII file.

        filename: string filename
        :return DataFrame
        """
        df = pd.read_fwf(filename,
                         colspecs=self.colspecs,
                         names=self.names,
                         **options)

        return df


def ReadStataDct(dct_file, **options):
    """reads a stata dictionary file.
    dict_file: string filename
    options: dict of options passed to open()

    :returns FixedWidthVariables object
    """
    type_map = dict(byte=int,
                    int=int,
                    long=int,
                    float=float,
                    double=float,
                    numeric=float)
    var_info = []

    with open(dct_file, **options) as f:
        for line in f:
            match = re.search(r'_column\(([^)]*)\)', line)

            if not match:
                continue

            start = int(match.group(1))
            t = line.split()
            vtype, name, fstring = t[1:4]
            name = name.lower()

            if vtype.startswith('str'):
                vtype = str
            else:
                vtype = type_map[vtype]

            long_desc = ' '.join(t[4:]).strip('"')
            var_info.append((start, vtype, name, fstring, long_desc))

    columns = ['start', 'type', 'name', 'fstring', 'desc']
    variables = pd.DataFrame(var_info, columns=columns)

    # fill in the end column by shifting the first column
    variables['end'] = variables.start.shift(-1)
    variables.loc[len(variables) - 1, 'end'] = 0
    dct = FixedWidthFiles(variables, index_base=1)

    return dct
