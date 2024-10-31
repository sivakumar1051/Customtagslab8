package com.feedlist.customtags;

import com.feedlist.model.Feed;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.util.List;

public class FeedTagCustom extends SimpleTagSupport {
    private List<Feed> feedList;

    public void setFeedList(List<Feed> feedList) {
        this.feedList = feedList;
    }

    @Override
    public void doTag() throws JspException, IOException {
        if (feedList != null && !feedList.isEmpty()) {
            StringBuilder output = new StringBuilder();
            output.append("<table>");
            output.append("<thead><tr><th>Title</th><th>Description</th><th>Date</th></tr></thead>");
            output.append("<tbody>");

            for (Feed feed : feedList) {
                output.append("<tr>");
                output.append("<td>").append(feed.getTitle()).append("</td>");
                output.append("<td>").append(feed.getDescription()).append("</td>");
                output.append("<td>").append(feed.getDate()).append("</td>");
                output.append("</tr>");
            }

            output.append("</tbody></table>");
            getJspContext().getOut().write(output.toString());
        }
    }
}
