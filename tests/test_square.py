import numpy as np

import example


def test_square():
    preds = np.asarray(example.square([1.0, 2.0]))
    np.testing.assert_almost_equal(preds, [1.0, 4.0], decimal=6)
