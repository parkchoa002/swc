package member;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class memberMgr {

	private DBConnectionMgr pool;

	public memberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
	}

	public boolean insertMember(memberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert into membertbl (id,pwd,email,years,major,region)values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getYears());
			pstmt.setString(5, bean.getMajor());
			pstmt.setString(6, bean.getRegion());
		
			if (pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	// 로그인
	public boolean loginMember(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from membertbl where id = ? and pwd = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	/*************
	 * ch17 필요한 메소드
	 * ************/

}