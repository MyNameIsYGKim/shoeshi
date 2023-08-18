<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="join.do" method="GET" novalidate>
					<div class="col-md-4 mb-3">
						<label for="id">아이디</label> <input type="text"
							class="form-control" name="id" placeholder="" value="" required>
						<div class="invalid-feedback">아이디를 입력해주세요.</div>
					</div>
					<div class="col-md-4 mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" name="password" placeholder="" value=""
							required>
						<div class="invalid-feedback">비밀번호를 입력하시오.</div>
					</div>

<!-- 					<div class="col-md-4 mb-3">
						<label for="password2">비밀번호 확인</label> <input type="password"
							class="form-control" id="password2" placeholder="" value=""
							required>
						<div class="invalid-feedback">비밀번호를 입력하시오.</div>
					</div> -->

					<div class="col-md-4 mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" name="name" placeholder="" value="" required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="address">주소</label> <input type="text"
							class="form-control" name="address" placeholder="ex)서울특별시 강남구"
							required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="tel">전화번호</label> <input type="tel"
							class="form-control" name="tel" placeholder="" value="" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>



					<!--           <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
          </div> -->

					<!--           <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root">가입 경로</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>검색</option>
                <option>카페</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="code">추천인 코드</label>
              <input type="text" class="form-control" id="code" placeholder="" required>
              <div class="invalid-feedback">
                추천인 코드를 입력해주세요.
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div> -->
					<button class="btn btn-primary btn-lg btn-block" type="submit" style="width: 200px; margin: 20px;">가입하기</button>
				</div>
				</form>
			</div>
		</div>
	</div>
<!-- 	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script> -->
</body>
</html>