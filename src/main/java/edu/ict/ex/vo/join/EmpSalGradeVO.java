package edu.ict.ex.vo.join;

import edu.ict.ex.vo.EmpVO;
import edu.ict.ex.vo.SalGradeVO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class EmpSalGradeVO {

	private EmpVO emp;
	   private SalGradeVO salgrade;

}
