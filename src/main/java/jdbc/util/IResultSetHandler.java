package jdbc.util;

import java.sql.ResultSet;

public interface IResultSetHandler <T>{
	T handler(ResultSet rs)throws Exception;//抽象方法
}
