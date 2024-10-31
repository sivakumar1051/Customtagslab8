package com.feedlist.controller;

import com.feedlist.model.Feed;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class FeedController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Feed> feeds = new ArrayList<>();

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(getServletContext().getResourceAsStream("/WEB-INF/feeds.json")))) {
            StringBuilder jsonData = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                jsonData.append(line);
            }

            JSONArray jsonArray = new JSONArray(jsonData.toString());
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                
                Feed feed = new Feed();
                feed.setTitle(jsonObject.getString("title"));
                feed.setDescription(jsonObject.getString("description"));
                feed.setDate(jsonObject.getString("date"));
                
                feeds.add(feed);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set feed list for both JSTL and custom tag page
        request.setAttribute("feedList", feeds);
        // request.getRequestDispatcher("/feedListJSTL.jsp").forward(request, response);
        request.getRequestDispatcher("/CustomTagFeedList.jsp").forward(request, response);
    }
}
