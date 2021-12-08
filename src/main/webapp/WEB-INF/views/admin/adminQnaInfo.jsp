<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.pageTtile
{
	font-size : 20px;
	font-weight: bolder;	
	
	width: 80%;
}

.pageTtitle_box
{
	margin-top : 10px;
	width: 40%;
	color : #252528;
	border-bottom : 2px solid gray;
}

.admin_table
{
	display: flex;
	flex-direction: column;
	flex-wrap: wrap;	
	justify-content: center;	
	align-content: flex-start;
}

.admin_mView_Table
{
	margin-top: 15px;
	border: 1px solid black;
	border-collapse: collapse;
	
	width: 50% !importent;
}
.q_table_00,.q_table_content, .q_table_01
{
	border: 1px solid black;
	border-collapse: collapse;
	height: 25px;
	
	font-size: 15px;
}

.q_table_00
{
	background: #ebfbff;	
}

.q_table_01
{
	background: #F2EFBD;
}

.q_table_content
{
	padding-left: 15px;		
}


.q_table_content>input:focus
{
	outline:none;
}

.admin_submit_btn
{
	margin-top: 20px;
	margin-bottom: 20px;
	display: flex;
	justify-content: flex-end;	
}

.q_table_content>input
{
	margin-top: 10px;
	margin-bottom: 10px;
	height: 25px;
	width: 95%;
}

#submitButton
{
	width: 20%;
	height: 25px;
}

.qna_textarea
{
	margin-top: 5px;
	margin-right: 5px;
	width : 95%;
	min-height: 100px;
	resize: vertical;
}

.qna_textarea:focus 
{
	outline: none;
}

</style>
<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
        			<!-- main content making area -->      
        			<%@include file="/WEB-INF/views/admin/adminHeader.jsp" %>	 	
        			<div class = "amdin_main_content">        				
        				<div class = "pageTtile">
        					<div class = "pageTtitle_box">
        						문의 상세 정보
        					</div>  		
        				</div>
        				<div class = "admin_table" >
        				
						<table class = "admin_mView_Table" style = "width:70%;">
							<tr class = "table-primary">
								<th class = "q_table_00">문의 번호</th>
								<td class = "q_table_content" id = "qna_no">${q.qnaNo}</td>
							</tr>		
							<tr class = "table-primary">
								<th class = "q_table_00">문의자 번호 </th>
								<td class = "q_table_content" id = "member_no">${q.memberNo}</td>
							</tr>
							<tr class = "table-primary">
								<th class = "q_table_00">문의자 </th>
								<td class = "q_table_content" id = "member_name">${q.memberName}</td>
							</tr>							
							<tr class = "table-primary">
								<th class = "q_table_00">문의 날짜 </th>
								<td class = "q_table_content" id = "qna_date">${q.writeDate}</td>
							</tr>							
							<tr class = "table-primary">
								<th class = "q_table_00">문의 제목 </th>
								<td class = "q_table_content" id = "qna_title">${q.qnaTitle}</td>
							</tr>
							<tr class = "table-primary">
								<th class = "q_table_00">문의 내용 </th>
								<td class = "q_table_content" id = "qna_content">
									<textarea class = "qna_textarea" readonly="readonly">${q.qnaContent}</textarea>								
								</td>
							</tr>							
						</table>					
				
						<div class = "admin_submit_btn">
							<button type="submit" class="btn btn-secondary" id = "submitButton">답변 제출</button>	
						</div>	 
        			</div>      				      			
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	</div>
<script>
$(function()
{
	$("#submitButton").click(function()
	{
		console.log("11");
	}
});
</script>
</div>
</body>