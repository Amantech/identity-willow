/*
 * Copyright 2014 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//package com.google.gitkit.samples;
package se.amantech.identitywillow;

import com.google.identitytoolkit.GitkitClient;
import com.google.identitytoolkit.GitkitClientException;
import com.google.identitytoolkit.GitkitUser;
import java.io.IOException;
import org.json.JSONException;
import java.io.ByteArrayInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;


  public class LgnServlet extends HttpServlet {
    /**
	 * 
	 */
//	private final HttpSender mockSender = Mockito.mock(HttpSender.class);
	private static final long serialVersionUID = 1L;
	static final String TOKEN_SERVER = "https://accounts.google.com/o/oauth2/token";
	private String userInfo;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
      // This check prevents the "/" handler from handling all requests by default
      if (!"/".equals(request.getServletPath())) {
        response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        return;
      }
      
      
      try {
        GitkitUser gitkitUser = null;
        GitkitClient gitkitClient = new GitkitClient.Builder()
        .setKeyStream(new ByteArrayInputStream(GitConfig.getP12Key()))
        .setServiceAccountEmail("456521938879-ddbftf52vo7771g0ludi4vsfd6ar1g9v@developer.gserviceaccount.com")
        .setGoogleClientId("456521938879-jhjg8u7fa6rp2gon7qubs1ntn8csedht.apps.googleusercontent.com")
        .setWidgetUrl("/gitkit")
        .setCookieName("gtoken")
        .setServerApiKey("AIzaSyBw4Cl3oJ9kAZ6CfJH7HyXJfGGri0qgd7w")
        .build();
        
        //GitkitClient gitkitClient = GitkitClient.createFromJson("gitkit-server-config.json");

        gitkitUser = gitkitClient.validateTokenInRequest(request);
        userInfo = null;
        if (gitkitUser != null) {
          userInfo = "Welcome back!<br><br> Email: " + gitkitUser.getEmail() + "<br> Id: " + gitkitUser.getLocalId() + "<br> Provider: " + gitkitUser.getCurrentProvider();
        }
        //response.getWriter().print(userInfo);
//        response.getWriter().print(new Scanner(new File("templates/index.html"), "UTF-8")
//            .useDelimiter("\\A").next()
//              .replaceAll("WELCOME_MESSAGE", userInfo != null ? userInfo : "You are not logged in")
//            .toString());
        response.setContentType("text/html");
        request.setAttribute("userInfo",userInfo);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
        response.setStatus(HttpServletResponse.SC_OK);
      } catch (GitkitClientException | JSONException e) {
        e.printStackTrace();
        response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        response.getWriter().print(e.toString());
      }
    }
  }