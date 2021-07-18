import seaborn as sns
from matplotlib import pyplot as plt


class DrawGraph:
    """
    draw graphs related to data provided
    """

    def __init__(self, dataframe):
        """
        get dataFrame
        :param dataframe: data for create graphs
        """
        self.dataframe = dataframe

    def create_figure(self, size, dpi):
        """
        create figure to insert plot
        :param size: figure width and height
        :param dpi: figure DPI
        :return: figure
        """
        plt.figure(figsize=size, dpi=dpi)

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

    def show(self):
        """
        show figure with plot created
        :return: figure
        """
        plt.show()
