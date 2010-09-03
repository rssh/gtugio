package gtugio.core.hibernate;

import org.hibernate.dialect.MySQL5InnoDBDialect;

public class MySQL5UTF8InnoDBDialect extends MySQL5InnoDBDialect {

    @Override
    public String getTableTypeString() {
        return " ENGINE=InnoDB DEFAULT CHARSET=utf8";
    }
}
