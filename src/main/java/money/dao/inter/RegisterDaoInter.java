package money.dao.inter;

import java.sql.ResultSet;

import com.model.Register;

public interface RegisterDaoInter {
	int createAccount(Register reg);
	ResultSet validateUser(String email,String code);
}
