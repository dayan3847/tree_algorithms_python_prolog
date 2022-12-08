import unittest
from typing import List

from src.FrequencyCalculator import FrequencyCalculator


class TestHuffmanInTextFiles(unittest.TestCase):

    def test_my_test(self):
        # list of all texts files names
        file_list: List[str] = [
            'text_hello_world.txt',
            'text_alejo_carpentier_los_pasos_perdidos.txt',
            'text_carlos_fuentes_aura.txt',
            'text_fernando_del_paso_palinuro_de_mexico.txt',
            'text_gabriel_garcia_marquez_cien_años_de_soledad.txt',
            'text_jorge_ibarguengoitia_estas_ruinas_que_ves.txt',
            'text_juan_rulfo_el_llano_en_llamas_cuento.txt',
            'text_juan_rulfo_pedro_paramo.txt',
            'text_julio_cortazar_rayuela.txt',
            'text_mario_vargas_llosa_pantaleon_y_las_visitadoras.txt',
        ]

        # create a frequency calculator
        frequency_calculator = FrequencyCalculator(file_list)
        frequency_calculator.frequency_symbols(True)


if __name__ == '__main__':
    unittest.main()