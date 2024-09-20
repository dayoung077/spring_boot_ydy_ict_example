package edu.ict.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.ict.ex.mapper.EmpMapper;
import edu.ict.ex.page.Criteria;
import edu.ict.ex.vo.DeptEmpVO;
import edu.ict.ex.vo.DeptVO;
import edu.ict.ex.vo.EmpDeptVO;
import edu.ict.ex.vo.EmpVO;
import edu.ict.ex.vo.SalgradeDeptEmpVO;
import edu.ict.ex.vo.EmpDeptSalgradeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EmpService {
   @Autowired
   private EmpMapper empMapper;
   
   public List<EmpVO> empList(){
      System.out.println("empList()..");
      
      return empMapper.empList();
   }
   
   public List<DeptVO> deptList(){
      System.out.println("deptList()..");
      
      return empMapper.deptList();
   }

   public List<EmpVO> empDeptList(){
      System.out.println("deptList()..");
      
      return empMapper.empDeptList();
   }
   
   public List<DeptEmpVO> deptEmpList(){
      System.out.println("deptEmpList()..");
      
      return empMapper.deptEmpList();
   }
   
   public List<SalgradeDeptEmpVO> salgradeDeptEmpList(){
      System.out.println("salgradeDeptEmpList()..");
      
      return empMapper.salgradeDeptEmpList();
   }
   
   public List<EmpDeptSalgradeVO> empDeptSalgradeList(){
      System.out.println("empDeptSalgradeList()..");
      
      return empMapper.empDeptSalgradeList();
   }
   
   public List<EmpDeptVO> empOneDeptList(){
      System.out.println("empOneDeptList()..");
      
      return empMapper.empOneDeptList();
   }
   
   public void join(EmpVO empVO) {
      log.info("join()..");
      
      empMapper.join(empVO);      
   }
   
   public int getTotal() {
      log.info("getTotal()..");
      
      return empMapper.getTotalCount();
   }

   public List<EmpVO> getListWithPaging(Criteria cri) {
      log.info("getListWithPaging()..");
      
      return empMapper.getListWithPaging(cri);
   }
   
}
