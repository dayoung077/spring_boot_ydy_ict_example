package edu.ict.ex.vo;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class DeptVOTest {

	@DisplayName("Dept 테스트")
	@Test
	void testDeptVO() {
		DeptVO deptVO = new DeptVO();

		deptVO.setDeptno(1000);
		deptVO.setDname("리서치");
		deptVO.setLoc("스위스");
		
		assumeTrue(deptVO.getLoc().contains("스위승"));

		System.out.println(deptVO.getDeptno());
		System.out.println(deptVO.getDname());
		System.out.println(deptVO.getLoc());

	}

}
