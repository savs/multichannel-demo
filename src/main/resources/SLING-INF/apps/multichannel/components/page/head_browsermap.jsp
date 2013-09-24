<%--
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
  --%>
<%@page session="false" contentType="text/html; UTF-8" %>
<%@include file="global.jsp"%>
<head>
    <meta charset="utf-8"/>
    <title><%= currentNode.getProperty("jcr:title").getString() %></title>

    <!-- BrowserMap feature detection library and dependencies -->
    <script type="text/javascript" src="/content/demo/js/browsermap/bmaputil.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/bmap.js"></script>
    <script type="text/javascript" src="/content/demo/js/externals/modernizr/modernizr.custom.js"></script>
    <script type="text/javascript" src="/content/demo/js/externals/matchMedia/matchMedia.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/probes.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/devicegroups.js"></script>
     <script language="javascript">
        // Populate test page
        BrowserMap.forwardRequest();
     </script>
</head>