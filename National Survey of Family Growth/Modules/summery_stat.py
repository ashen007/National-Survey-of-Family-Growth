import numpy as np
import scipy.stats as ss


class SummeryStat:
    """
    calculate summery statistics
    """

    def __init__(self, data, column):
        self.data = data
        self.column = column

    def mean(self):
        """
        mean of the data
        :return: mean
        """
        return np.mean(self.data[self.column])

    def median(self):
        """
        median of the data
        :return: median
        """
        return np.median(self.data[self.column])

    def mode(self, bin_counts=False):
        """
        most frequent value/values in data
        :return: mode
        """
        output = ss.mode(self.data[self.column])

        if bin_counts:
            return output
        else:
            return output[0]

    def variance(self):
        """
        variability of distribution
        :return: variance
        """
        return np.var(self.data[self.column])

    def standard_deviation(self):
        """
        deviation from mean
        :return: std
        """
        return np.std(self.data[self.column])
