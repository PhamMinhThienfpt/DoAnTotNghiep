<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="panel">
			<div class="panel-title">
				<h3> <span class="glyphicon glyphicon-star-empty "></span> Thêm nhân viên mới</h3>
			</div>
			<div class="panel-body">
				<div class="row col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-title">
                            <h4> <span class="glyphicon glyphicon-info-sign"></span> Thông tin nhân viên</h4>
                        </div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Mã nhân viên</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Tên nhân viên</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Ngày sinh</label>
                                    <input type="date" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Giới tính</label>
                                    <select class="form-control  col-md-5" id="gender">
                                        <option>Nam</option>
                                        <option>Nữ</option>
                                      </select>
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Số điện thoại</label>
                                    <input type="tel" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Email</label>
                                    <input type="email" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Địa chỉ</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                            </form>
                    </div>
                    </div>
                </div>
                <div class="row col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-title">
                            <h4><span class="glyphicon glyphicon-info-sign"></span> Thông tin account</h4>
                        </div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Tên đăng nhập</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Mật khẩu</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Xác nhận mật khẩu</label>
                                    <input type="text" class="form-control col-md-5" id="">
                                </div>
                                <div class="form-group col-md-11">
                                    <label class="col-md-3" for="lbloaiSP">Loại người dùng</label>
                                    <select class="form-control  col-md-5" id="role">
                                        <option>Admin</option>
                                        <option>Nhân viên</option>
                                      </select>
                                </div>
                            </form>
                    </div>
                    </div>
				</div>
            </div>
            
			</div>
				</div>
				<div style="height: 50px;">
					<a  style="margin-right: 50px;float: right;" class="btn btn-mini btn-primary btncreate" href="#">
						<i class="glyphicon glyphicon-plus-sign"></i>
						Lưu	
					</a>
				</div>
					<h2>Add Employee Data</h2>
		<form:form method="POST" action="/Nhom2_QLBanHangOnl/home/savenhanvien.do">
	   		<table>
			    <tr>
			        <td><form:label path="maNhanVien">Mã nhân viên:</form:label></td>
			        <td><form:input path="maNhanVien" value="${nhanvien.maNhanVien}" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="hoTenNV">ten:</form:label></td>
			        <td><form:input path="hoTenNV" value="${nhanvien.hoTenNV}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="matKhau">mat khau:</form:label></td>
			        <td><form:input path="matKhau" value="${nhanvien.matKhau}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="email">email:</form:label></td>
			        <td><form:input path="email" value="${nhanvien.email}"/></td>
			    </tr>
			    
			    <tr>
			        <td><form:label path="SDT">sdt:</form:label></td>
                    <td><form:input path="SDT" value="${nhanvien.SDT}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="CMND">cmnd:</form:label></td>
                    <td><form:input path="CMND" value="${nhanvien.CMND}"/></td>
                 </tr>
                 <tr>
			        <td><form:label path="gioiTinh">giới tính:</form:label></td>
                    <td><form:input path="gioiTinh" value="${nhanvien.gioiTinh}"/></td>
                  </tr>
                  <tr>
			        <td><form:label path="chucVu">chuc vu:</form:label></td>
                    <td><form:input path="chucVu" value="${nhanvien.chucVu}"/></td>
                  </tr>
                 <tr>
			        <td><form:label path="hinh">hinh:</form:label></td>
                    <td><form:input path="hinh" value="${nhanvien.hinh}"/></td>
			    </tr>
			  <tr>
			        <td><form:label path="diaChi">diachi:</form:label></td>
                    <td><form:input path="diaChi" value="${nhanvien.diaChi}"/></td>
			    </tr>
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
</body>
</html>