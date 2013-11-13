// Copyright (c) 2013, the Clean project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:clean_backend/clean_backend.dart';
import 'package:static_file_handler/static_file_handler.dart';

import 'package:clean_ajax/server.dart';

void main() {
  Backend backend;

  StaticFileHandler fileHandler = new StaticFileHandler.serveFolder('/home/maty/vacuumlabs/git/');
  RequestHandler requestHandler = new RequestHandler();

  backend = new Backend(fileHandler, requestHandler)..listen();
}
