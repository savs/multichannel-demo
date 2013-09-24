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
<%@page session="false" contentType="text/html; UTF-8" %><%@page import="org.apache.sling.api.resource.ResourceUtil,org.apache.sling.api.resource.ValueMap,org.apache.sling.api.request.ResponseUtil"%>
<%@include file="global.jsp"%>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width">
    <title>MultiChannel Demo Page</title>
    <link rel="stylesheet" type="text/css" href="/content/demo/css/style.css">

    <script src="/content/demo/js/jquery-1.10.1.min.js" type="text/javascript"></script>

    <!-- Foresight connection detection library -->
    <style>
    .fs-img {
        /* Low-res is the original source, which is the default */
        /* Hi-res replaces the width in the URL; in this case, 'w320', with the new width */
        font-family: 'image-set( url(w320|w{requestWidth}) 2x high-bandwidth )';
        /* font-family: 'image-set( url({directory}{requestWidth}x{requestHeight}/{file}) 2x high-bandwidth'; */
        display:none;
      }
    </style>
    <script>
        foresight = {
            options: {
                //minKbpsForHighBandwidth: 800,
                speedTestUri: "//www.andrewsavory.com/presentations/AdaptTo_2013_Slinging_Multichannel_Content_the_BrowserMap_Way/speed-test/200K.jpg",
                speedTestKB: 200,
                speedTestExpireMinutes: 1
            }
        };
    </script>
    <script src="/content/demo/js/foresight-debugger.js"></script>
    <script src="/content/demo/js/foresight.min.js"></script>

    <!-- BrowserMap feature detection library and dependencies -->
<%
final ValueMap attributes = ResourceUtil.getValueMap(resource);
final String[] bmapDevGroups = attributes.get("data-bmap-devgroups", String[].class);

    for (String bmapDevGroup : bmapDevGroups) { %>
      <link rel="alternate" hreflang="en" data-bmap-devgroups="<%= bmapDevGroup %>" href="index.<%= bmapDevGroup %>.html" />
    <%
      }
    %>

    <script type="text/javascript" src="/content/demo/js/browsermap/bmaputil.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/bmap.js"></script>
    <script type="text/javascript" src="/content/demo/js/externals/modernizr/modernizr.custom.js"></script>
    <script type="text/javascript" src="/content/demo/js/externals/matchMedia/matchMedia.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/probes.js"></script>
    <script type="text/javascript" src="/content/demo/js/browsermap/devicegroups.js"></script>
</head>