#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2018 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

from gnuradio import gr, gr_unittest
from gnuradio import blocks
from rsaRx_py_fb import rsaRx_py_fb

class qa_rsaRx_py_fb (gr_unittest.TestCase):

    def setUp (self):
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_001_t (self):
		src_data = (863,606,0,343,187)
		expected_result = (128,255,0,7,127)
		src = blocks.vector_source_i (src_data)
		mult = rsaRx_py_fb (147,943)
		snk = blocks.vector_sink_b ()
		self.tb.connect (src, mult)
		self.tb.connect (mult, snk)
		self.tb.run ()
		result_data = snk.data ()
		self.assertEqual(expected_result, result_data)


if __name__ == '__main__':
    gr_unittest.run(qa_rsaRx_py_fb, "qa_rsaRx_py_fb.xml")
