package com.yu.st.util;

import com.yu.st.Application;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * @author hhyygg2009
 * @date Created in 2021/5/25 19:45
 */
@Component
public class MyLogger {
    final private static Logger logger=LoggerFactory.getLogger(MyLogger.class);

    public static Logger getLogger() {
        return logger;
    }
}
