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
package se.amantech.identitywillow;
//package com.google.gitkit.samples;
import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WidgetServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		StringBuilder builder = new StringBuilder();
		String line;
		try {
			while ((line = request.getReader().readLine()) != null) {
				builder.append(line);
			}
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		String postBody = URLEncoder.encode(builder.toString(), "UTF-8");

		// response.getWriter().print(new Scanner(new
		// File("templates/gitkit-widget.html"), "UTF-8")
		// .useDelimiter("\\A").next()
		// .replaceAll("JAVASCRIPT_ESCAPED_POST_BODY", postBody)
		// .toString());
		response.setContentType("text/html");
		request.setAttribute("todo", "10");
		request.getRequestDispatcher("/widget.jsp").forward(request, response);
		response.setStatus(HttpServletResponse.SC_OK);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
