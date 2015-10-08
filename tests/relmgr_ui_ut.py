# Ariane Release Manager
# REST server test
#
# Copyright (C) 2015 echinopsii
# Author: Stan Renia
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

__author__ = 'stanrenia'

import unittest
import requests

class TestREST(unittest.TestCase):

    def test_checkout_files(self):
        version = "0.7.0"
        mode = "tags"
        r = requests.post("http://localhost:5000/rest/checkout", params={"version": version, "mode": mode})
        print(r.status_code, r.reason, r.text)
