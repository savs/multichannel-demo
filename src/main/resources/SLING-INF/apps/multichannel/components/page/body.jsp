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
<%@page session="false" contentType="text/html; UTF-8"
        %>
<%@include file="global.jsp"%>
<body>
  <h1>Hello World</h1>

  <p><a href="index.html">Back to start</a></p>

  <h3>Selectors</h3>
  <ul>
  <%
    String[] selectors = slingRequest.getRequestPathInfo().getSelectors();
    for (int i = 0; i < selectors.length; i++) { %>
      <li><%= selectors[i] %></li>
    <%
      }
    %>
  </ul>

  <h3>BrowserMap</h3>
  <!-- BrowserMap capability detection -->
  <div id="result">
    <p>
    The BrowserMap client-side detection prototype thinks your
    device type is <span id="devicegroup.description">UNIDENTIFIED??</span>,
    which is part of the <span id="devicegroup.name">NOT FOUND??</span> device group.
    </p>
</div>

 <script language="javascript">
    // Populate test page
    BrowserMap.forwardRequest();
    var matchedGroups = BrowserMap.getMatchedDeviceGroups(),
        matchedGroupsDescription = [],
        matchedGroupsNames = [],
        testFunctions = [],
        dgs = [],
        deviceGrps,
        g,
        element,
        i;
    for (g in matchedGroups) {
        matchedGroupsDescription.push(matchedGroups[g].description);
        matchedGroupsNames.push(matchedGroups[g].name);
        testFunctions.push(matchedGroups[g].testFunction);
    }
    deviceGrps = BrowserMap.getDeviceGroups();
    for (var g in deviceGrps) {
        dgs.push(deviceGrps[g].name);
    }

    element = document.getElementById('devicegroup.description');
    element.innerHTML = matchedGroupsDescription.join(', ')
    element = document.getElementById('devicegroup.name');
    element.innerHTML = matchedGroupsNames.join(', ');

    element = document.getElementById('debug.info');
    var probingResults = BrowserMap.getProbingResults();
    for(i in probingResults) {
        if (probingResults.hasOwnProperty(i)) {
            element.innerHTML += i + '=' + probingResults[i] + '<br />';
        }
    }
    element.innerHTML += '<br />';
    element.innerHTML += 'Test functions: <br />';
    for (i in testFunctions) {
        element.innerHTML += testFunctions[i] + '<br />';
    }
    element.innerHTML += '<br />';
    </script>

     <script language="javascript">
        // Populate test page
        BrowserMap.forwardRequest();
     </script>

  <h3>Foresight</h3>

  <!-- Foresight debug data goes here -->


<!--   <img data-src="//demo.cdnconnect.com/images/hi-res/spacewalk.w320.jpg" data-width="320" data-height="212" class="fs-img">
  <noscript>
    <img src="//demo.cdnconnect.com/images/hi-res/spacewalk.w320.jpg">
  </noscript>
 -->
  <img data-src="/content/demo/img/2775573516_da17216f75_o.jpg" data-width="320" data-height="212" class="fs-img">
  <noscript>
    <img src="/content/demo/img/2775573516_da17216f75_o.jpg">
  </noscript>


</body>
