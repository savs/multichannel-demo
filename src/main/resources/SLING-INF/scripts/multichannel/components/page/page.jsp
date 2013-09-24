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
<%@page session="false" contentType="text/html; UTF-8" import="java.util.Arrays" %>
<%@include file="global.jsp"%>
<!DOCTYPE html>
<html>
  <% if (slingRequest.getRequestPathInfo().getSelectors().length == 0) { %>
      <!-- call browsermap head if no selector -->
      <sling:call script="head_browsermap.jsp"/>
      <sling:call script="body_browsermap.jsp"/>
  <% } else { %>
      <sling:call script="head.jsp"/>
  <% } %>

  <%
    if(Arrays.asList(slingRequest.getRequestPathInfo().getSelectors()).contains("browser")) {
  %>
      <sling:call script="body.jsp"/>
  <%
    } else if (Arrays.asList(slingRequest.getRequestPathInfo().getSelectors()).contains("highResolutionDisplay")) {
    %>
      <sling:call script="body_mobile.jsp"/>
    <%
    } else {
      // do nothing ... body_browsermap should already be set
    }
    %>
    
</html>
