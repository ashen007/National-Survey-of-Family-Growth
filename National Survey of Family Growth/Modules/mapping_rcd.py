import pandas as pd
import numpy as np


class MakePregMap:
    """
    mapping records according to given index column
    """

    def __init__(self, data, id_column):
        """
        initialize
        :param data: dataframe
        :param id_column: index column for records
        """
        self.data = data
        self.case_ids = id_column

    def unique_responds(self):
        """
        get unique indexes
        :return: array
        """
        return self.data[self.case_ids].unique()

    def pregnancy_map(self):
        """
        map records according to unique indexes
        :return: dict
        """
        maped_pregs = {}
        for case_id in self.unique_responds():
            maped_pregs[case_id] = self.data[self.data[self.case_ids] == case_id]

        return maped_pregs


def get_preg_lengths(data, id_column):
    """
    pregnancy length
    :param data: dataFrame
    :param id_column: index column
    :return: dataFrame
    """
    preg_len = {}
    maped_pregs = MakePregMap(data, id_column)

    for key, value in maped_pregs.pregnancy_map().items():
        preg_len[key] = [value[value['birthord'] == 1]['gest_lb'].values[0],
                         np.ceil(np.median(value[value['birthord'] > 1]['gest_lb']))]

    return pd.DataFrame(preg_len.values(),
                        index=preg_len.keys(),
                        columns=['firstBabies', 'others'])


def get_res_ages(data, id_column):
    """
    age data by index
    :param data: dataframe
    :param id_column: index column
    :return: dataFrame
    """
    resp_ages = {}
    maped_pregs = MakePregMap(data, id_column)

    for key, value in maped_pregs.pregnancy_map().items():
        temp = value.sort_values(by='birthord')
        resp_ages[key] = [temp.head(1)['ager'].values[0],
                          temp.head(1)['pregordr'].values[0],
                          temp.head(1)['birthord'].values[0],
                          temp.head(1)['agecon'].values[0],
                          temp.head(1)['agepreg'].values[0],
                          temp.tail(1)['pregordr'].values[0],
                          temp.tail(1)['birthord'].values[0],
                          temp.tail(1)['agecon'].values[0],
                          temp.tail(1)['agepreg'].values[0],
                          ]

    return pd.DataFrame(resp_ages.values(),
                        index=resp_ages.keys(),
                        columns=['age_int',
                                 'pregord_fst', 'birthord_fst',
                                 'agecon_fst', 'agepreg_fst',
                                 'pregord_lst', 'birthord_lst',
                                 'agecon_lst', 'agepreg_lst'])


def get_outcome_rec(data, id_column):
    """
    get each respondents pregnancy outcome details
    :param data: dataframe
    :param id_column: index column
    :return: dataFrame
    """
    outcomes = {}
    maped_pregs = MakePregMap(data, id_column)

    for key, value in maped_pregs.pregnancy_map().items():
        outcomes[key] = [value.shape[0],
                         len(value[value['outcome'] == 1]),
                         len(value[value['outcome'] == 2]),
                         len(value[value['outcome'] == 3]),
                         len(value[value['outcome'] == 4]),
                         len(value[value['outcome'] == 5]),
                         len(value[value['outcome'] == 6])
                         ]

    return pd.DataFrame(outcomes.values(),
                        index=outcomes.keys(),
                        columns=['pregnum',
                                 'livebrth', 'induabor',
                                 'stilbirth', 'miscarg',
                                 'epcpreg', 'curpreg'])
