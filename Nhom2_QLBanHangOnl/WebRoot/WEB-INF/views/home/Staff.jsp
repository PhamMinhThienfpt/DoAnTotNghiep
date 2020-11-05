<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="http://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css"
	rel="stylesheet">
<script
	src="http://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- main content start-->
	<div id="page-wrapper">
		<div class="tabable">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#staffList">Danh
						sách nhân viên</a></li>
				<li><a data-toggle="tab" href="#accountList">Danh sách tài
						khoản</a></li>
			</ul>
			<!--Tab danh sách nhân viên-->
			<div class="tab-content">
				<div id="staffList" class="tab-pane fade in active">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<div class="autocomplete col-md-8 " id="suggestProduct">
										<span class="input-icon input-icon-right" style="width: 100%;">
											<input type="text"
											placeholder="Nhập tên hoặc mã sản phẩm và nhấn Tìm kiếm"
											class="ng-dirty" id="txtSuggestProduct" autocomplete="off">
											<i class="icon-remove red ng-hide" style="cursor: pointer;"></i>
											<button class="btn btn-mini btn-primary" name="search"
												onclick="return true;" type="submit" value="Search">
												<span>Tìm kiếm</span> <i class="ace-icon fa fa-search"></i>
											</button>
										</span>
									</div>
									<div class="col-md-4">
										<a style="float: right;"
											class="btn btn-mini btn-primary btncreate"
											href="home/createstaff.do"> <i
											class="glyphicon glyphicon-plus-sign"></i> Thêm nhân viên
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xm-12">
							<div id="table">
								<table class="table table-bordered" id="myTable">
									<thead>
										<tr>
											<th>Mã NV</th>
											<th>Tên NV</th>
											<th>Mật Khẩu</th>
											<th>Email</th>
											<th>SĐT</th>
											<th>Số CMND</th>
											<th>Giới Tính</th>
											<th>Chức Vụ</th>
											<th>Ảnh</th>
											<th>Địa Chỉ</th>
											<th>Hoạt động</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${nhanvienList}" var="nhanvien">
											<tr>
												<td><c:out value="${nhanvien.maNhanVien}" /></td>
												<td><c:out value="${nhanvien.hoTenNV}" /></td>
												<td><c:out value="${nhanvien.matKhau}" /></td>
												<td><c:out value="${nhanvien.email}" /></td>
												<td><c:out value="${nhanvien.SDT}" /></td>
												<td><c:out value="${nhanvien.CMND}" /></td>
												<td><c:out value="${nhanvien.gioiTinh}" /></td>
												<td><c:out value="${nhanvien.chucVu}" /></td>
												<td><c:out value="${nhanvien.hinh}" /></td>
												<td><c:out value="${nhanvien.diaChi}" /></td>
												<td>
													<div class="hidden-phone visible-desktop action-buttons">
														<a
															href="home/editnhanvien.do?MaNhanVien=${nhanvien.maNhanVien}"
															class="btn btn-minier btn-success" id="btnEdit"
															title="Chỉnh sửa thông tin"> <i
															class="glyphicon glyphicon-edit"></i>
														</a> 
														
														<a
															href="home/deletenhanvien.do?MaNhanVien=${nhanvien.maNhanVien}"
															class="btn btn-minier btn-danger" title="Xóa nhân viên">
															<i class="glyphicon glyphicon-trash"></i>
														</a>


													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<!--Tab danh sách tài khoản-->
				<div id="accountList" class="tab-pane fade">

					<div id="staffList" class="tab-pane fade in active">
						<div class="container"></div>
						<div class="row">
							<div class="col-xm-12">
								<div id="table">
									<table class="table table-bordered" id="myTable">
										<thead>
											<tr>
												<th>Mã Nhân viên</th>
												<th>Tên sản phẩm</th>
												<th>Thông tin sản phẩm</th>
												<th>Loại sản phẩm</th>
												<th>Nhà cung cấp</th>
												<th>Số lượng</th>
												<th>Giá bán</th>
												<th>Hoạt động</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>SP001</td>
												<td>Ram ddr4 2400</td>
												<td>là sdsfsfdsfdsf dsf sdfds</td>
												<td>Ram</td>
												<td>Cty Đất việt</td>
												<td>10</td>
												<td>20000000</td>
												<td>
													<div class="hidden-phone visible-desktop action-buttons">
														<a class="btn btn-mini btn-primary" id="btnSetKey"
															title="Cấp lại mật khẩu"> <i
															class="ace-icon fa fa-key"></i>
														</a>
														
														 <a class="btn btn-mini btn-danger" href=""
															title="Xóa tài khoản"> <i
															class="glyphicon glyphicon-trash"></i>
														</a>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- main content end-->
		<!-- Edit model popup-->
		<div id="editModal" class="modal">
			<div id="page-wrapper">
				<div class="row col-md-12">
					<div class="panel panel-success">
						<div class="panel-title">
							<span class="closeEdit">&times;</span>
							<h4>
								<span class="glyphicon glyphicon-edit"></span> Chỉnh sửa thông
								tin nhân viên
							</h4>
						</div>
						<div class="panel-body">
<%-- 							<form:form method="POST"  action="/Nhom2_QLBanHangOnl/home/savenhanvien.do">
								<table>
									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="maNhanVien">Mã nhân viên:</form:label></td>
										<td><form:input type="text" class="form-control col-md-5"
												path="maNhanVien" id="" value="${nhanvien.maNhanVien}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="HoTenNV">Tên Nhân Viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="hoTenNV" id="" value="${nhanvien.hoTenNV}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="MatKhau">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="matKhau" id="" value="${nhanvien.matKhau}" /></td>
									</tr>


									<!-- 					<tr class="form-group col-md-11">
									<label class="col-md-3" for="lbloaiSP">Giới tính</label> <select
										class="form-control  col-md-5" id="gender">
										<option>Nam</option>
										<option>Nữ</option>
									</select>
								</tr> -->

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="email">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="email" id="" value="${nhanvien.email}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="SDT">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="SDT" id="" value="${nhanvien.SDT}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="CMND">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="CMND" id="" value="${nhanvien.CMND}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="gioiTinh">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="gioiTinh" id="" value="${nhanvien.gioiTinh}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="chucVu">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="chucVu" id="" value="${nhanvien.chucVu}" /></td>
									</tr>

									<tr class="form-group col-md-11">
										<td><form:label class="col-md-3" path="diaChi">Mã nhân viên</form:label>
										</td>
										<td><form:input type="text" class="form-control col-md-5"
												path="diaChi" id="" value="${nhanvien.diaChi}" /></td>
									</tr>

									<tr class="panel-footer">
										<td><a class="btn btn-mini btn-primary" type="submit">
												<span><i class="ace-icon fa fa-key"></i> Lưu thay đổi</span>
										</a></td>
									</tr>
								</table>
							</form:form> --%>
							
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Edit model popup-->
		<!-- Setkey model popup-->
		<div id="setkeyModal" class="modal">
			<div id="page-wrapper">
				<div class="row col-md-12">
					<div class="panel panel-success">
						<div class="panel-title">
							<span class="closeSetKey">&times;</span>
							<h4>
								<span class="glyphicon glyphicon-edit"></span> Cấp lại mật khẩu
							</h4>
						</div>
						<div class="panel-body">
							<form>
								<div class="form-group col-md-11">
									<label class="col-md-3" for="lbloaiSP">Mã nhân viên</label> <input
										type="text" class="form-control col-md-5" id="">
								</div>
								<div class="form-group col-md-11">
									<label class="col-md-3" for="lbloaiSP">Nhập mật khẩu
										mới</label> <input type="password" class="form-control col-md-5" id="">
								</div>
								<div class="form-group col-md-11">
									<label class="col-md-3" for="lbloaiSP">Xác nhận lại mật
										khẩu</label> <input type="password" class="form-control col-md-5"
										id="">
								</div>
							</form>
						</div>
						<div class="panel-footer">
							<a class="btn btn-mini btn-primary" title="Cấp lại mật khẩu">
								<span><i class="ace-icon fa fa-key"></i> Lưu mật khẩu</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Setkey model popup-->
	</div>
	<script>
		//Script mở model Edit
		var modal = document.getElementById("editModal");
		var modal2 = document.getElementById("setkeyModal");
		// Get the button that opens the modal
		var btn = document.getElementById("btnEdit");
		var btn2 = document.getElementById("btnSetKey");
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("closeEdit")[0];
		var span2 = document.getElementsByClassName("closeSetKey")[0];
		// When the user clicks on the button, open the modal
		btn.onclick = function() {
			modal.style.display = "block";
		}
		btn2.onclick = function() {
			modal2.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
		span2.onclick = function() {
			modal2.style.display = "none";
		}

		//Script mở model Edit
	</script>
</body>
</html>