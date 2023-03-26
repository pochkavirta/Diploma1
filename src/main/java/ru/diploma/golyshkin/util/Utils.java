package ru.diploma.golyshkin.util;

import lombok.experimental.UtilityClass;
import org.springframework.util.StringUtils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@UtilityClass
public class Utils {
    private final DateTimeFormatter SQL_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public static LocalDateTime parseSqlDateTime(String sqlDateTime) {
        if (StringUtils.isEmpty(sqlDateTime)) {
            return null;
        }
        return LocalDateTime.parse(sqlDateTime.substring(0, 19), SQL_FORMAT);
    }
}
