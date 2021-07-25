import numpy as np
import scipy.stats as ss

from Modules.plot import DrawGraph


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


class PMF:
    """
    probability mass function
    """

    def __init__(self, dataFrame, col):
        self.data = dataFrame
        self.col = col
        self.prob = self._pmfs()

    def _pmfs(self):
        """
        calculate pmfs for unique values
        :return: probability
        """
        probs = self.data[self.col].value_counts() / self.data.shape[0]
        return probs.to_dict()

    def pmf(self, x):
        """
        probability mass function of x
        :param x: value want to calculate pmf
        :return: pmf of x
        """
        return self.prob[x]

    def render(self, **options):
        """
        create pmf graph
        :param options: key words of seaborn histplot can use here
        :return: figure
        """
        pmf_graph = DrawGraph(self.data, [12, 6], 300)

        pmf_graph.create_figure
        pmf_graph.hist(x=self.col, stat='probability', **options)
        pmf_graph.show


class CDF:
    def __init__(self, dataframe, label):
        self.data = dataframe
        self.column = label

    def prob(self):
        prob = {}
        for value in self.data[self.column].values:
            prob[value] = len(self.data[self.data[self.column] <= value]) / self.data.shape[0]

        return prob
