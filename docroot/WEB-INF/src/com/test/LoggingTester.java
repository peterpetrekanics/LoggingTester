// This portlet was created with the following goal:
// - it will print log messages, on different log levels
// In Liferay, we have these log levels available:
// debug, warn, info, fatal, error, trace
// You can find useful information here:
// https://web.liferay.com/community/wiki/-/wiki/Main/How+to+create+custom+logging?_36_pageResourcePrimKey=4375349

package com.test;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

public class LoggingTester extends MVCPortlet {
	private static Log _log = LogFactoryUtil.getLog(LoggingTester.class);

	public void processAction(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
			PortletException {
		System.out.println("ProcessAction starts..");

		if (_log.isInfoEnabled()) {
			_log.info("This is an INFO level log message");
		}

		System.out.println("ProcessAction ends..");
	}

	@Override
	public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse) throws IOException,
			PortletException {
		// super.serveResource(resourceRequest, resourceResponse);
		System.out.println("serveResource starts..");

		// Retrieving the action's name that was initiated by the user
		String performAction = ParamUtil.get(resourceRequest, "portletAction", "");

		// Performing the action based on user input
		switch (performAction) {
		case "debug":
//			System.out.println(_log.isDebugEnabled());
			if (_log.isDebugEnabled()) {
				_log.debug("This is an DEBUG level log message");
			}
			break;

		case "warn":
			if (_log.isWarnEnabled()) {
				_log.warn("This is an WARN level log message");
			}
			break;
			
		case "info":
			if (_log.isInfoEnabled()) {
				_log.info("This is an INFO level log message");
			}
			break;

		case "fatal":
			if (_log.isFatalEnabled()) {
				_log.fatal("This is an FATAL level log message");
			}
			break;
			
		case "error":
			if (_log.isErrorEnabled()) {
				_log.error("This is an ERROR level log message");
			}
			break;

		case "trace":
			if (_log.isWarnEnabled()) {
				_log.warn("This is an TRACE level log message");
			}
			break;

		default:
			;
			break;
		}
		System.out.println("The following button was pressed: " + performAction);

		System.out.println("serveResource ends..");
	}

}