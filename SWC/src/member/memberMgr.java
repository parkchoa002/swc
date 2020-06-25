package member;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class memberMgr {

	private DBConnectionMgr pool;

	public memberMgr() {
		try {
			pool = DBConnectionMgr.getInstance(); // 데이터베이스 커넥션 풀 객체를 얻는다
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
			con = pool.getConnection(); //풀을 통해서 Connection을 얻는다.
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
			System.out.println(con);
			System.out.println(pstmt);
			System.out.println(rs);
			System.out.println(flag);
		}
		return flag;
	}
	public boolean deleteConfirm(String id, String pwd) {
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
			System.out.println(con);
			System.out.println(pstmt);
			System.out.println(rs);
			System.out.println(flag);
		}
		return flag;
	}
	
	//회원탈퇴
	public boolean deleteMember(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		int a = 0;
		try {
			con = pool.getConnection();
			sql = "delete from membertbl where id= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			a = pstmt.executeUpdate();
			pstmt.executeUpdate();
			if (a == 1)
				flag = true;
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			System.out.println(con);
			System.out.println(pstmt);
			System.out.println(id);
			System.out.println(a);
			System.out.println(flag);
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	
	//회원정보 수정
	public boolean updateMember(memberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		int a = 0;
		try {
			con = pool.getConnection();
			sql = "update membertbl set pwd=?, email=?, years=?, major=?, region=? where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPwd());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getYears());
			pstmt.setString(4, bean.getMajor());
			pstmt.setString(5, bean.getRegion());
			pstmt.setString(6, bean.getId());

			a = pstmt.executeUpdate();
			pstmt.executeUpdate();
			if (a == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
			System.out.println(a);
			System.out.println(con);
			System.out.println(pstmt);
			System.out.println(rs);
			System.out.println(flag);
		}
		return flag;
	}


}