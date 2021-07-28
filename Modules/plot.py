import seaborn as sns
from matplotlib import pyplot as plt


class DrawGraph:
    """
    draw graphs related to data provided
    """

    def __init__(self, dataframe, figsize, dpi):
        """
        get dataFrame
        :param dataframe: data for create graphs
        """
        self.dataframe = dataframe
        self.size = figsize
        self.dpi = dpi

    @property
    def create_figure(self):
        """
        create figure to insert plot
        :return: figure
        """
        return plt.figure(figsize=self.size, dpi=self.dpi)

    @property
    def show(self):
        """
        show figure with plot created
        :return: figure
        """
        return plt.show()

    def subplots(self, size, rows, cols):
        fig, axes = plt.subplots(figsize=size, dpi=self.dpi, nrows=rows, ncols=cols)
        return axes.ravel()

    def hist(self, x=None, y=None, bins='auto', stat='count', hue=None, **options):
        """
        create histogram
        :param x: x coordinates
        :param y: y coordinates
        :param bins: bin deciding algorithm (auto,fd,doane,scott,stone,rice,sturges,sqrt
        :param stat: aggregate statistics (count, frequence, density,probability)
        :param hue: vector for mapping plot colors
        :param options: more options
        :return: histogram
        """
        sns.histplot(data=self.dataframe,
                     x=x, y=y, hue=hue,
                     stat=stat, bins=bins,
                     **options
                     )

    def kde(self, x=None, y=None, hue=None, **options):
        """
        create kernal density estimator
        :param x: x coordinates
        :param y: y coordinates
        :param hue: vector for mapping plot colors
        :param options: more options
        :return: kde plot
        """
        sns.kdeplot(data=self.dataframe,
                    x=x, y=y, hue=hue,
                    **options
                    )

    def cdf(self, x=None, y=None, color=None, label=None, hue=None,
            stat='proportion', complementary=False, log_scale=False):
        """
        create cumulative distribution graph
        :param color: plot color
        :param x: x coordinates
        :param y: y coordinates
        :param hue: vector for mapping plot colors
        :param stat: distribution statistics to compute
        :param complementary: create CCDF
        :param log_scale: use log scale
        :return: cdf or ccdf
        """
        sns.ecdfplot(data=self.dataframe,
                     x=x, y=y, hue=hue, color=color, label=label,
                     stat=stat, complementary=complementary, log_scale=log_scale,
                     )


def scatter(x=None, y=None, **options):
    return sns.scatterplot(x, y, **options)
