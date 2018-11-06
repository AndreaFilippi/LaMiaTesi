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
from rsaTX_py_bf import rsaTX_py_bf

class qa_rsaTX_py_bf (gr_unittest.TestCase):

    def setUp (self):
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_001_t (self):
        src_data = (128,255,0,7,127)
        expected_result = (863,606,0,343,187)
        src = blocks.vector_source_b (src_data)
        mult = rsaTX_py_bf (3,943)
        snk = blocks.vector_sink_i ()
        self.tb.connect (src, mult)
        self.tb.connect (mult, snk)
        self.tb.run ()
        result_data = snk.data ()
        self.assertEqual(expected_result, result_data)


if __name__ == '__main__':
    gr_unittest.run(qa_rsaTX_py_bf, "qa_rsaTX_py_bf.xml")
