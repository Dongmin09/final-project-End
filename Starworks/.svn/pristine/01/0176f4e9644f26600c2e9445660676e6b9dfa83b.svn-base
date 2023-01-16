<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- 멘션 -->
<link rel="stylesheet" href="/resources/css/jquery.mentiony2.css">
<script type="text/javascript" src="/resources/js/jquery.mentiony2.js"></script>

<!-- 모달 -->
<script src="/resources/assets/js/modal.js"></script>

<!-- Moment js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<style>
body {
   background-color: primary;
}

.kanban-board {
   display: flex;
   flex-direction: row;
   justify-content: space-between;
   font-family: sans-serif;
}

.kanban-block {
   padding: 0.6rem;
   width: 31.5%;
   border-radius: 0.3rem;
}

#todo {
   background-color: #eaedf6;
}

#inprogress {
   background-color: #eaedf6;
   /* display: none; */
}

#done {
   background-color: #eaedf6;
   /* display: none; */
}

.task {
   background-color: white;
   margin: 0.2rem 0rem 0.3rem 0rem;
   border: 0.1rem solid black;
   border-radius: 0.2rem;
   padding: 0.5rem 0.2rem 0.5rem 2rem;
}

.create-new-task-block {
/*     display: none;  */
   /* display: flex; */
   background: #eaedf6;
   width: 64.4%;
   flex-direction: column;
   padding: 0.6rem;
}

.form-row {
   display: flex;
   flex-direction: row;
   margin: 0.2rem;
}

.form-row-label {
   width: 15%;
   padding: 0.2rem;
   padding-right: 0.5rem;
}

.form-row-input {
   border: 0.1rem solid black; border-radius : 0rem 0.2rem 0.2rem 0rem;
   width: 85%;
   border-radius: 0rem 0.2rem 0.2rem 0rem;
}

.form-row-buttons {
   display: flex;
   flex-direction: row;
   justify-content: space-between;
   margin: 0.2rem;
}
.form-control {
	color:black;
}
/* 진척도 시작 */
.rangeSlider {
   display: flex;
   justify-content: center;
   align-items: center;
}
#rangeValue {
  position: relative;
  text-align: center;
}
.range {
  width: 400px;
  height: 15px;
  -webkit-appearance: none;
  border-radius: 15px;
  overflow: hidden;
}
.range::-webkit-slider-thumb {
  -webkit-appearance: none;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  cursor: pointer;
  border: 4px solid #333;
  box-shadow: -407px 0 0 400px;
}
/* 진척도 끝 */
</style>
<div class="container">
   <input type="hidden" id="empCd" name="empCd" value="<sec:authentication property='principal.employeeVO.empCd'/>" />
   <div class="task-button-block" style="margin-bottom:10px;">
      <button id="createTask" class="btn ripple btn-primary">일감 생성</button>
   </div>
   <div class="kanban-board">
      <div class="kanban-block" id="todo" value="TODO00" ondrop="drop(event)" ondragover="allowDrop(event)">
         <strong>할일</strong>
         <c:forEach var="todoList" items="${todoList}">

         </c:forEach>
      </div>
      <div class="kanban-block" id="inprogress" value="TODO01" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin:0px 70px 0px 70px;">
         <strong>진행중</strong>
         <c:forEach var="inprogressList" items="${inprogressList}">

         </c:forEach>
      </div>
      <div class="kanban-block" id="done" value="TODO02" ondrop="drop(event)" ondragover="allowDrop(event)">
         <strong>완료</strong>
         <c:forEach var="doneList" items="${doneList}">

         </c:forEach>
      </div>
      <div class="create-new-task-block" id="create-new-task-block" style="display:none;">
         <strong>새 일감</strong>
         <div class="form-group ">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">제목</label>
               </div>
               <div class="col-md-9">
                  <input class="form-control" type="hidden" name="todoNo" id="todoNo" value="" />
                  <input class="form-control" value="" type="text" name="tit" id="tit">
               </div>
            </div>
         </div>
         <div class="form-group ">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">일정 기간</label>
               </div>
               <div class="col-md-9">
                  <div class="row row-sm">
                     <input class="form-control" placeholder="시작날짜를 고르세요" type="date" style="color: #000000; width: 48%; margin-left:8.3px;" name="regTi" id="regTi" value="" />
                     <input class="form-control" placeholder="종료날짜를 고르세요" type="date" style="color: #000000; width: 48%;" name="endTi" id="endTi" value="" /> 
                  </div>
               </div>
            </div>
         </div>
         <div class="form-group ">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">설명</label>
               </div>
               <div class="col-md-9">
                  <textarea class="form-control" name="con" id="con" cols="70" rows="15"></textarea>
               </div>
            </div>
         </div>
         <div class="form-group ">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">종류</label>
               </div>
               <div class="col-md-9">
               <select class="form-control" name="type" id="type" onChange="typeSelect(this);">
                  <option value="TD01">개인 업무</option>
                  <option value="TD02">팀 업무</option>
               </select>
               </div>
            </div>
         </div>
         <div class="form-group ">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">담당자</label>
               </div>
               <div class="col-md-9">
                  <input class="form-control" value="<sec:authentication property="principal.employeeVO.empNm"/>" type="text" name="ctor2" id="ctor2" readonly>
                  <input class="form-control" value="<sec:authentication property="principal.employeeVO.empCd"/>" type="hidden" name="ctor" id="ctorCd" readonly>
               </div>
            </div>
         </div>
         <div class="form-group" id="TypeTD02" style="display:none;">
            <div class="row row-sm">
               <div class="col-md-2">
                  <label class="form-label" for="task-name">참여인원</label>
               </div>
               <div class="col-md-9">
                  <input type="text" class="form-control" id="empCd22" value="" name="empCd" />
               </div>
            </div>
         </div>
         
         <span class="btn-list row-3">
            <button type="button" id="createTask" class="btn ripple btn-dark" style="float:right; width:10%; margin:0px 60px 0px 12px">취소</button>
            <button type="button" id="save-button" class="btn ripple btn-main-primary" style="float:right; width:10%;">등록</button>
         </span>
      </div>
   </div>
</div>
<div class="modal fade" id="modaldemo12">
   <div class="modal-dialog" role="document">
      <div class="modal-content modal-content-demo">
         <div class="modal-header">
            <input type="text" class="form-control" id="modalTit" name="modalTit" value="" readonly="readonly" style="border: 0;" />
            <input type="hidden" class="form-control" id="modalTodoNo" name="modalTodoNo" value="" />
            <button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
         </div>
         <div class="modal-body">
            <textarea class="form-control" id="modalCon" name="modalCon" rows="10" cols="70" readonly="readonly" style="border: 0;"></textarea>
            <div class="row row-sm">
               <input type="date" class="form-control" id="modalRegTi" name="modalRegTi" value="" style="width:48%; border: 0; margin:0px 1px 0px 9.3px" readonly="readonly" />
               <input type="date" class="form-control" id="modalEndTi" name="modalEndTi" value="" style="width:48%; border: 0;" readonly="readonly" />
            </div>
            <div>
               <span>참여인원 : </span>
               <span class="empCd">참여인원</span>
            </div>
            <input type="hidden" class="form-control" id="ctorCd" name="ctorCd" value="" />
            <hr>
            <span>진척도</span>
            <div class="rangeSlider">
                 <span class="progs" id="rangeValue"></span>
                 <input class="range" type="range" id="modalProgs" name="progs" value="" min="0" max="100" step="5" onChange="rangeSlide(this.value)" onmousemove="rangeSlide(this.value)" />
             </div>
           </div>
         <div class="modal-footer" id="modal-footer" style="display:block">
            <button class="btn ripple btn-danger" type="button" id="deleteBtn" name="deleteBtn" style="float:right">삭제</button>
            <button class="btn ripple btn-primary" type="button" id="updateBtn" name="updateBtn" style="float:right">수정</button>
         </div>
      </div>
      
   </div>
</div>
<!-- alert -->
<script>
var empCd = $("#empCd").val();
let header = "${_csrf.headerName}";
let token = "${_csrf.token}";

// 할일 목록 조회
$.ajax({
   url:"/todo/todoList",
   type:"post",
   data:{empCd:empCd},
   beforeSend:function(xhr){
      xhr.setRequestHeader(header, token);
   },
   success:function(result){
      console.log("전체목록 result : " , result);
      var todo = document.getElementById("todo");
      for(let i=0; i<result.length; i++){
		if(result[i].type == "TD01"){
    	  if (result[i].sit == "TODO00"){
            todo.innerHTML += `
                      <div class="task border-success" id="task\${i}" value="\${result[i].todoNo}" draggable="true" ondragstart="drag(event)">
                         <div style="margin-right:19px;">
                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
                              <span>\${result[i].tit}</span>
                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
                           data-todoCd="\${result[i].todoCd}"
                           data-ctorCd="\${result[i].ctorCd}"
                           data-tit="\${result[i].tit}"
                           data-con="\${result[i].con}" 
                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
                           data-ctor="\${result[i].ctor}"
                           data-progs="\${result[i].progs}"
                           data-empCd="\${result[i].empCd}"
                           data-todoNo="\${result[i].todoNo}"
                           >상세보기</a>
                              <div id='ctor${i}'>생성자 : \${result[i].ctor}</div>
                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
                              <div>진행률 : \${result[i].progs}%</div>
                           <div class="progress mg-b-8">
                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
                                 \${result[i].progs}
                              </div>
                           </div>
                        </div
                       </div>
                   `;
         } else if (result[i].sit == "TODO01") {
            inprogress.innerHTML += `
                      <div class="task border-success" id="task\${i}" value="\${result[i].todoNo}" draggable="true" ondragstart="drag(event)">
                         <div style="margin-right:19px;">
                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
                              <span>\${result[i].tit}</span>
                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
                           data-todoCd="\${result[i].todoCd}"
                           data-ctorCd="\${result[i].ctorCd}"
                           data-tit="\${result[i].tit}"
                           data-con="\${result[i].con}" 
                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
                           data-ctor="\${result[i].ctor}"
                           data-progs="\${result[i].progs}"
                           data-empCd="\${result[i].empCd}"
                           data-todoNo="\${result[i].todoNo}"
                           >상세보기</a>
                              <div>생성자 : \${result[i].ctor}</div>
                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
                              <div>진행률 : \${result[i].progs}%</div>
                              <div class="progress mg-b-8">
                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
                                 \${result[i].progs}
                              </div>
                           </div>
                        </div>
                       </div>
                   `;
         } else if (result[i].sit == "TODO02") {
            done.innerHTML += `
                     <div class="task border-success" id="task\${i}" value="\${result[i].todoNo}" draggable="false" ondragstart="drag(event)">
                        <div style="margin-right:19px;">
                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
                              <span>\${result[i].tit}</span>
                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
                           data-todoCd="\${result[i].todoCd}"
                           data-ctorCd="\${result[i].ctorCd}"
                           data-tit="\${result[i].tit}"
                           data-con="\${result[i].con}" 
                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
                           data-ctor="\${result[i].ctor}"
                           data-progs="\${result[i].progs}"
                           data-empCd="\${result[i].empCd}"
                           data-todoNo="\${result[i].todoNo}"
                           >상세보기</a>
                              <div>생성자 : \${result[i].ctor}</div>
                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
                              <div>진행률 : \${result[i].progs}%</div>
                              <div class="progress mg-b-8">
                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
                                 \${result[i].progs}
                              </div>
                           </div>
                        </div>
                       </div>
                   `; 
         }
    	  
		} else if(result[i].type == "TD02"){
		  	  if (result[i].sit == "TODO00"){
		            todo.innerHTML += `
		                      <div class="task border-primary" id="task\${i}" value="\${result[i].todoNo}" draggable="true" ondragstart="drag(event)">
		                         <div style="margin-right:19px;">
		                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
		                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
		                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
		                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
		                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
		                              <span>\${result[i].tit}</span>
		                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
		                           data-todoCd="\${result[i].todoCd}"
		                           data-ctorCd="\${result[i].ctorCd}"
		                           data-tit="\${result[i].tit}"
		                           data-con="\${result[i].con}" 
		                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
		                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
		                           data-ctor="\${result[i].ctor}"
		                           data-progs="\${result[i].progs}"
		                           data-empCd="\${result[i].empCd}"
		                           data-todoNo="\${result[i].todoNo}"
		                           >상세보기</a>
		                              <div id='ctor${i}'>생성자 : \${result[i].ctor}</div>
		                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
		                              <div>진행률 : \${result[i].progs}%</div>
		                           <div class="progress mg-b-8">
		                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
		                                 \${result[i].progs}
		                              </div>
		                           </div>
		                        </div
		                       </div>
		                   `;
		         } else if (result[i].sit == "TODO01") {
		            inprogress.innerHTML += `
		                      <div class="task border-primary" id="task\${i}" value="\${result[i].todoNo}" draggable="true" ondragstart="drag(event)">
		                         <div style="margin-right:19px;">
		                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
		                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
		                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
		                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
		                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
		                              <span>\${result[i].tit}</span>
		                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
		                           data-todoCd="\${result[i].todoCd}"
		                           data-ctorCd="\${result[i].ctorCd}"
		                           data-tit="\${result[i].tit}"
		                           data-con="\${result[i].con}" 
		                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
		                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
		                           data-ctor="\${result[i].ctor}"
		                           data-progs="\${result[i].progs}"
		                           data-empCd="\${result[i].empCd}"
		                           data-todoNo="\${result[i].todoNo}"
		                           >상세보기</a>
		                              <div>생성자 : \${result[i].ctor}</div>
		                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
		                              <div>진행률 : \${result[i].progs}%</div>
		                              <div class="progress mg-b-8">
		                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
		                                 \${result[i].progs}
		                              </div>
		                           </div>
		                        </div>
		                       </div>
		                   `;
		         } else if (result[i].sit == "TODO02") {
		            done.innerHTML += `
		                     <div class="task border-primary" id="task\${i}" value="\${result[i].todoNo}" draggable="false" ondragstart="drag(event)">
		                        <div style="margin-right:19px;">
		                           <input type="hidden" id="todoCd" name="todoCd" value="\${result[i].todoCd}" />
		                           <input type="hidden" id="regTi3" name="regTi" value="\${moment(result[i].regTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="endTi3" name="endTi" value="\${moment(result[i].endTi).format('YYYY-MM-DD')}" />
		                           <input type="hidden" id="ctor3" name="ctor" value="\${result[i].ctor}" />
		                           <input type="hidden" id="empCd3" name="empCd" value="\${result[i].empCd}" />
		                           <input type="hidden" id="ctorCd" name="ctorCd" value="\${result[i].ctorCd}" />
		                           <input type="hidden" id="taskTodoNo" name="todoNo" value="\${result[i].todoNo}" />
		                              <span>\${result[i].tit}</span>
		                           <a class="btn-modal" data-bs-target="#modaldemo12" data-bs-toggle="modal" href="" style="float:right;"
		                           data-todoCd="\${result[i].todoCd}"
		                           data-ctorCd="\${result[i].ctorCd}"
		                           data-tit="\${result[i].tit}"
		                           data-con="\${result[i].con}" 
		                           data-regTi="\${moment(result[i].regTi).format('YYYY-MM-DD')}"
		                           data-endTi="\${moment(result[i].endTi).format('YYYY-MM-DD')}"
		                           data-ctor="\${result[i].ctor}"
		                           data-progs="\${result[i].progs}"
		                           data-empCd="\${result[i].empCd}"
		                           data-todoNo="\${result[i].todoNo}"
		                           >상세보기</a>
		                              <div>생성자 : \${result[i].ctor}</div>
		                              <div>마감날짜 : \${moment(result[i].endTi).format('YYYY-MM-DD')}</div>
		                              <div>진행률 : \${result[i].progs}%</div>
		                              <div class="progress mg-b-8">
		                              <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="\${result[i].progs}" class="progress-bar progress-bar-lg wd-\${result[i].progs}p" role="progressbar">
		                                 \${result[i].progs}
		                              </div>
		                           </div>
		                        </div>
		                       </div>
		                   `; 
		         }
		}
      }
   },
   error: function(error) {
      console.log('에러입니다');
      console.log(error);
   }
});

$(function () {
	 // todo 등록
	   $('#save-button').click(function(){
	      let todoNo = $("#todoNo").val();
	      let tit = $("#tit").val();	//제목
	      let con = $("#con").val();	//설명
	      let regTi = $("#regTi").val();	//일정 기간 시작
	      let endTi = $("#endTi").val();	//일정 기간 마감
	      let ctor = $("#ctorCd").val();	//담당자
	      let ctor2 = $('#ctor2').val();
	      let type = $("#type").val();
	      let emp = '';
	      for(var i=0; i<$('.mention-area').length; i++) {
	         emp += $('.mention-area').eq(i).children().children('a').attr('data-item-id');
	         emp += ' ';
	         console.log('emp : ', emp);
	      }
	      let empNm = ctor + ' ' + emp;
	      console.log('empNm : ', empNm);
	      let data = {
	            "todoNo":todoNo,
	            "tit":tit, 
	            "con":con, 
	            "regTi":regTi, 
	            "endTi":endTi, 
	            "ctor":ctor, 
	            "type":type, 
	            "empNm":empNm
	            };
	       console.log("data : " + JSON.stringify(data));
	       
	       console.log("todoNo : " + todoNo + " | tit : " + tit + " | con : " + con + " | regTi : " + regTi
	             + " | endTi : " + endTi + " | ctor : " + ctor + " | type : " + type + " | empNm : " + empNm);
	       
	       $.ajax({
	          url:"./todoInsert",
	          type:"post",
	          data:JSON.stringify(data),
	          dataType:"JSON",
	          contentType:"application/json; charset=utf-8",
	          beforeSend:function(xhr){
	             xhr.setRequestHeader(header, token);
	          },
	          success:function(result){
	             console.log("ajax넘기기 성공  result : " , result);
	             console.log("ajax넘기기 성공  result : " + result);
	             
	             let max = $('.task').length + 1;
	             if(result>0){
	            	 if(type == 'TD01'){
		            	 let str = "<div class='task border-success' id='task"+max+"' value='"+todoNo+"' draggable='true' ondragstart='drag(event)'>"
		            		 +	"<div style='margin-right:19px;'>"
		            		 +	"<input type='hidden' id='regTi3' name='regTi' value='"+regTi+"'>"
		            		 +	"<input type='hidden' id='endTi3' name='endTi' value='"+endTi+"'>"
		            		 +	"<input type='hidden' id='ctor3' name='ctor' value='"+ctor+"'>"
		            		 +	"<input type='hidden' id='empCd3' name='empCd' value='"+empNm+"'>"
		            		 +	"<input type='hidden' id='ctorCd' name='ctorCd' value='"+ctor+"'>"
		            		 +	"<input type='hidden' id='taskTodoNo' name='todoNo' value='"+todoNo+"'>"
		            		 +	" <span>" + tit + "</span>"
		            		 +	"<a class='btn-modal' data-bs-target='#modaldemo12' data-bs-toggle='modal' href='' style='float:right;' data-todocd='' data-ctorcd='"+ctor+"' data-tit='"+tit+"' data-con='"+con+"' data-regti='"+regTi+"' data-endti='"+endTi+"' data-ctor='"+ctor+"' data-progs='0' data-empcd='"+empNm+"' data-todono='"+todoNo+"'>상세보기</a>"
		            		 +	" <div id='ctor'>생성자 : " + ctor2 + "</div>"
		            		 +	"<div>마감날짜 : " + endTi + "</div>"
		            		 +	"<div>진행률 : 0%</div>"
		            		 +	"<div class='progress mg-b-8'>"
		            		 +	"<div aria-valuemax='100' aria-valuemin='0' aria-valuenow='0' class='progress-bar progress-bar-lg wd-0p' role='progressbar'>"
		            		 +	"0"
		            		 +	"</div>"
		            		 +	" </div>"
		            		 +	"</div>"
		            		 +	"</div>";
							$("#todo").append(str);
	            	 } else if(type == 'TD02'){
	            		 let str = "<div class='task border-primary' id='task"+max+"' value='"+todoNo+"' draggable='true' ondragstart='drag(event)'>"
	            		 +	"<div style='margin-right:19px;'>"
	            		 +	"<input type='hidden' id='regTi3' name='regTi' value='"+regTi+"'>"
	            		 +	"<input type='hidden' id='endTi3' name='endTi' value='"+endTi+"'>"
	            		 +	"<input type='hidden' id='ctor3' name='ctor' value='"+ctor+"'>"
	            		 +	"<input type='hidden' id='empCd3' name='empCd' value='"+empNm+"'>"
	            		 +	"<input type='hidden' id='ctorCd' name='ctorCd' value='"+ctor+"'>"
	            		 +	"<input type='hidden' id='taskTodoNo' name='todoNo' value='"+todoNo+"'>"
	            		 +	" <span>" + tit + "</span>"
	            		 +	"<a class='btn-modal' data-bs-target='#modaldemo12' data-bs-toggle='modal' href='' style='float:right;' data-todocd='' data-ctorcd='"+ctor+"' data-tit='"+tit+"' data-con='"+con+"' data-regti='"+regTi+"' data-endti='"+endTi+"' data-ctor='"+ctor+"' data-progs='0' data-empcd='"+empNm+"' data-todono='"+todoNo+"'>상세보기</a>"
	            		 +	" <div id='ctor'>생성자 : " + ctor2 + "</div>"
	            		 +	"<div>마감날짜 : " + endTi + "</div>"
	            		 +	"<div>진행률 : 0%</div>"
	            		 +	"<div class='progress mg-b-8'>"
	            		 +	"<div aria-valuemax='100' aria-valuemin='0' aria-valuenow='0' class='progress-bar progress-bar-lg wd-0p' role='progressbar'>"
	            		 +	"0"
	            		 +	"</div>"
	            		 +	" </div>"
	            		 +	"</div>"
	            		 +	"</div>";
						$("#todo").append(str);
	            	 }
						
						
						// 상세보기 모달 버튼 클릭 이벤트
						   $(".btn-modal").click(function(){
						      let empCd = $("#empCd").val();
						      let todoCd = $(this).data("todocd");
						      let ctorCd = $(this).data("ctorcd");
						      let tit = $(this).data("tit");
						      let con = $(this).data("con");
						      let regTi = $(this).data("regti");
						      let endTi = $(this).data("endti");
						      let ctor = $(this).data("ctor");
						      let progs = $(this).data("progs");
						      let todoNo = $(this).data("todono");

						      $(".modal-title").text(tit);
						      $(".con").text(con);
						      $("input[name='ctorCd']").val(ctorCd);
						      $(".regTi").text(regTi);
						      $(".endTi").text(endTi);
						      $(".ctor").text(ctor);
						      $(".progs").text(progs);
						      $("input[name='progs']").val(progs);
						      $("input[name='modalTit']").val(tit);
						      $("textarea[name='modalCon']").val(con);
						      $("input[name='modalRegTi']").val(regTi);
						      $("input[name='modalEndTi']").val(endTi);
						      $("input[name='modalTodoNo']").val(todoNo);
						      
						      $.ajax({
						         url:"/todo/detail",
						         type:"post",
						         data:{tit:tit},
						         beforeSend:function(xhr){
						            xhr.setRequestHeader(header, token);
						         },
						         success:function(data){
						            //data : List<TodoVO>
						            //item : TodoVO
						            $(".empCd").text("");
						            $.each(data,function(i,item){
//						                console.log("empNm : " + item.empNm);
						               $(".empCd").append(item.empNm + " ");
						            });
						         }
						      });
						      
						      // 등록된 일감 삭제(임시삭제 상태로 변경)
						      $("#deleteBtn").on("click",function(){
						         var deleteData = {"tit":tit};
						         
						         $.ajax({
						            url:"./temporaryDelete",
						            contentType:"application/json;charset=utf-8",
						            data:JSON.stringify(deleteData),
						            type:"post",
						            beforeSend:function(xhr){
						               xhr.setRequestHeader(header, token);
						            },
						            success:(function(result){
						               console.log(result);
						               if(result>0){
						                  location.href="/todo/todo";
						               }else{
						                  swal("변경되지 않았습니다.");
						               }
						            })
						         })
						      });
						   
						      if(empCd == ctorCd){
						         $("#modal-footer").css("display", "block");
						         $("#modalTit").attr("readonly", false);
						         $("#modalCon").attr("readonly", false);
						         $("#modalRegTi").attr("readonly", false);
						         $("#modalEndTi").attr("readonly", false);
						         document.getElementById("modalProgs").disabled = false;
						      } else {
						         $("#modal-footer").css("display", "none");
						         $("#modalTit").attr("readonly", true);
						         $("#modalCon").attr("readonly", true);
						         $("#modalRegTi").attr("readonly", true);
						         $("#modalEndTi").attr("readonly", true);
						         document.getElementById("modalProgs").disabled = true;
						      }
						   });  
						
						
						
		            if(socket) {
		                 let socketMsg = "todo,"+todoNo+","+ctor+","+emp+","+tit+","+ctor2;
		                 console.log(socketMsg);
		                 socket.send(socketMsg);
		                 }
	            }else{
	               swal("변경되지 않았습니다.");
	            }
	          },
	          error : function(error) {
	             console.log('에러입니다.');
	          }
	       });
	      let calendarTitle = "TODO : " + tit;
	      let calendarStart = $("#regTi").val()+"";
	      let calendarEnd = $("#endTi").val()+"";
	      let calendarData = {"title":calendarTitle, "sta":calendarStart, "endTime":calendarEnd, "allDay":"ture", "empCd":empNm, "color":"#53FF4C", "textColor":"black"};
	      
	     // 캘린더도 등록하기
	     if(tit!=""||tit!=null && calendarStart!=""||calendarStart!=null&&calendarEnd!=""||calendarEnd!=null){
			$.ajax({
				async:false,
				url:"/calendar/multiSchedule",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(calendarData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(result){
					if(result == 0){
						console.log("안성공!!@@!!");
					}
						console.log("성공!!@@!!");
				}
			});	  
	     }
	      
	      $("#tit").val("");
	      $("#con").val("");
	      $("#regTi").val("");
	      $("#endTi").val("");
	      $("#type").val("TD01").attr("selected", "selected");
	      $("#empCd22").val("");
	      document.getElementById("TypeTD02").style.display="none";
	      
	      
	      
	   });
	
	// 상세보기 모달 버튼 클릭 이벤트
   $(".btn-modal").click(function(){
      let empCd = $("#empCd").val();
      let todoCd = $(this).data("todocd");
      let ctorCd = $(this).data("ctorcd");
      let tit = $(this).data("tit");
      let con = $(this).data("con");
      let regTi = $(this).data("regti");
      let endTi = $(this).data("endti");
      let ctor = $(this).data("ctor");
      let progs = $(this).data("progs");
      let todoNo = $(this).data("todono");

      $("input[name='progs']").val(progs);
      $("input[name='modalTit']").val(tit);
      $("textarea[name='modalCon']").val(con);
      $("input[name='modalRegTi']").val(regTi);
      $("input[name='modalEndTi']").val(endTi);
      $("input[name='modalTodoNo']").val(todoNo);
      
      $.ajax({
         url:"/todo/detail",
         type:"post",
         data:{tit:tit},
         beforeSend:function(xhr){
            xhr.setRequestHeader(header, token);
         },
         success:function(data){
            //data : List<TodoVO>
            //item : TodoVO
            $(".empCd").text("");
            $.each(data,function(i,item){
               console.log("empNm : " , item);
               $(".empCd").append(item.empNm + " ");
            });
         }
      });
      
      // 등록된 일감 삭제(임시삭제 상태로 변경)
      $("#deleteBtn").on("click",function(){
         var deleteData = {"tit":tit};

         $.ajax({
            url:"./temporaryDelete",
            contentType:"application/json;charset=utf-8",
            data:JSON.stringify(deleteData),
            type:"post",
            beforeSend:function(xhr){
               xhr.setRequestHeader(header, token);
            },
            success:(function(result){
               console.log(result);
               if(result>0){
                  location.href="/todo/todo";
               }else{
                  swal("변경되지 않았습니다.");
               }
            })
         })
         
      // 캘린더 작스
		let modalTit2 = "TODO : " + $("#modalTit").val();
		let modalRegTi2 = $("#modalRegTi").val();
		let modalEndTi2 = $("#modalEndTi").val();
		
 		let removeData = {"title":modalTit2, "sta":modalRegTi2,"endTime":modalEndTi2};
	console.log(removeData);
       // 캘린더 일정에도 지우기!!
 			$.ajax({
 				async:false,
 				url:"/calendar/todoRemove",
 				contentType:"application/json;charset=utf-8",
 				data:JSON.stringify(removeData),
 				type:"post",
 				beforeSend:function(xhr){
 					xhr.setRequestHeader(header, token);
 				},
 				success:function(result){		
 					console.log("성공!!@@!!");
 					location.reload(); 
 				}
 			}); 
         
         
      });
   
      if(empCd == ctorCd){
         $("#modal-footer").css("display", "block");
         $("#modalTit").attr("readonly", false);
         $("#modalCon").attr("readonly", false);
         $("#modalRegTi").attr("readonly", false);
         $("#modalEndTi").attr("readonly", false);
         document.getElementById("modalProgs").disabled = false;
      } else {
         $("#modal-footer").css("display", "none");
         $("#modalTit").attr("readonly", true);
         $("#modalCon").attr("readonly", true);
         $("#modalRegTi").attr("readonly", true);
         $("#modalEndTi").attr("readonly", true);
         document.getElementById("modalProgs").disabled = true;
      }
   });  
   
  
});

//todo 내용 수정 
$("#updateBtn").on("click",function(){
   let modalTit = $("#modalTit").val();
   let modalCon = $("#modalCon").val();
   let modalRegTi = $("#modalRegTi").val();
   let modalEndTi = $("#modalEndTi").val();
   let modalProgs = $("#modalProgs").val();
   let modalTodoNo = $("#modalTodoNo").val();
   
   let updateData = {"tit":modalTit, "con":modalCon, "regTi":modalRegTi, "endTi":modalEndTi, "progs":modalProgs, "todoNo":modalTodoNo};
   console.log("updateData" + updateData);
   
   $.ajax({
      url:"./update",
      contentType:"application/json;charset=utf-8",
      data:JSON.stringify(updateData),
      type:"post",
      beforeSend:function(xhr){
         xhr.setRequestHeader(header, token);
      },
      success:(function(udateResult){
         console.log("tit : " + modalTit + " | con : " + modalCon + " | regTi : " + modalRegTi 
               + " | endTi : " + modalEndTi + " | progs : " + modalProgs + " | todoNo : " + modalTodoNo);
         
         let progs100Result = {"progs":modalProgs};
         
         $.ajax({
            url:"./progs100",
            contentType:"application/json;charset=utf-8",
            data:JSON.stringify(progs100Result),
            type:"post",
            beforeSend:function(xhr){
               xhr.setRequestHeader(header, token);
            },
            success:(function(progs100Result){
               if(progs100Result>0){
                  location.href="/todo/todo";
               }else{
                  swal("변경되지 않았습니다.");
               }
            })
         });
      })
   })
});

function test(){
	swal("변경 되었습니다");
}

// 진척도 
function rangeSlide(value) {
    document.getElementById('rangeValue').innerHTML = value;
}

// drag 이벤트
function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}
function allowDrop(ev) {   
    ev.preventDefault();
}
function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.currentTarget.appendChild(document.getElementById(data));
    
   let todoNo = $("#"+data).attr("value");
    let sit = $("#"+data).parent().attr("value");
    
    console.log("todoNo : " + todoNo + " | sit : " + sit);
    
    let sitChangeData = {"sit":sit, "todoNo":todoNo};
    
    $.ajax({
       url:"./sitChange",
       type : "post",
      dataType : "json",
      data:JSON.stringify(sitChangeData),
      contentType:"application/json;charset=utf-8",
      beforeSend:function(xhr){
         xhr.setRequestHeader(header, token);
      },
      success : function(result) {
         console.log("sitChangeResult : " + result);
         // 완료 항목으로 이동 시 이동 불가능
         if(sit == "TODO02") {
        	 document.getElementById(data).draggable = false;
         }
      }
    })
}
  
  
// 일감생성 버튼 클릭  
$('#createTask, #createTask').click(function(){
	$("#tit").val("");
    $("#con").val("");
    $("#regTi").val("");
    $("#endTi").val("");
    $("#type").val("TD01").attr("selected", "selected");
    $("#ctorCd").val("<sec:authentication property="principal.employeeVO.empCd"/>");
    $("#empCd22").val("");
    document.getElementById("TypeTD02").style.display="none";
	   
    var x = document.getElementById("inprogress");
    var y = document.getElementById("done");
    var z = document.getElementById("create-new-task-block");
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "block";
        z.style.display = "none";
    } else {
        x.style.display = "none";   
        y.style.display = "none";
        z.style.display = "block";
    }
    
    $("#todoNo").text("");
    $("#todoNo").val(${todoNo});
    let todoNo = $("#todoNo").val();
	console.log($("#regTi").val());
});

// 일감 생성할때 종류(팀업무) 선택시에 참여인원 div<onChange> 이벤트
function typeSelect(type){
   if(type.value == 'TD02') {
      document.getElementById("TypeTD02").style.display="block";
   }
   else {
      document.getElementById("TypeTD02").style.display="none";
   }
}



// 멘션 시작 
function renameKey ( obj, oldKey, newKey ) {
   obj[newKey] = obj[oldKey];
   delete obj[oldKey];
}
$(function() {
   $('#empCd22').mentiony({
    onDataRequest: function (mode, keyword, onDataRequestCompleteCallback) {
        // 스프링 시큐리티를 위한 토큰처리(csrf)
   $.ajax({
      type : "post",
      url : "/mentionList",
      dataType : "json",
      beforeSend:function(xhr){
         xhr.setRequestHeader(header, token);
      },
      success : function(response) {
         const arr1 = response;
         arr1.forEach( obj => renameKey( obj, 'empCd', 'id' ) );
         
         const arr2 = arr1;
         arr2.forEach( obj => renameKey( obj, 'empNm', 'name' ) );
         
         const arr3 = arr2;
         arr3.forEach( obj => renameKey( obj, 'profile', 'avatar' ) );
         
         const arr4 = arr3;
         arr4.forEach( obj => renameKey( obj, 'depNm', 'info' ) );
         
         var data = arr4;
            // NOTE: Assuming this filter process was done on server-side
            data = jQuery.grep(data, function( item ) {
                return item.name.toLowerCase().indexOf(keyword.toLowerCase()) > -1;
            });
            // End server-side
         
            // Call this to populate mention.
            onDataRequestCompleteCallback.call(this, data);   
      }
   });
   },
    timeOut: 500, // Timeout to show mention after press @
    debug: 1, // show debug info
   });
});
//멘션 끝   
</script>