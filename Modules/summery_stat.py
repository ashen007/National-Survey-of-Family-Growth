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

    def quantiles(self, percentile):
        """
        calculate quantile
        :param percentile: percentile
        :return: quantile
        """
        return np.quantile(self.data[self.column], percentile)

    def iqr(self):
        """
        calculate inter-quartile range
        :return: iqr
        """
        q1 = np.quantile(self.data[self.column], 0.25)
        q2 = np.quantile(self.data[self.column], 0.75)

        return q2 - q1


class CDF:
    def __init__(self, dataframe, label):
        self.data = dataframe
        self.column = label

    def prob(self):
        prob = {}
        for value in self.data[self.column].values:
            prob[value] = len(self.data[self.data[self.column] <= value]) / self.data.shape[0]

        return prob
