<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CKeditor 이미지업로드 테스트입니다. 하단 처럼 작성하면 이미지 업로드 가능합니다.(수정X)</title>
    <script src="https://kit.fontawesome.com/b1cadc3305.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script src="/plugin/ckeditor/ckeditor.js"></script>
<style type="text/css">
.cke_textarea_inline{
	border: 1px solid #000;
	}
</style>
</head>
<body>

    <select id="
    Reward-documents" >
        <option value="0">HW(하드웨어)</option>
        <option value="1">SW(소프트웨어)</option>
        <option value="2">HW+SW(하드웨어 + 소프트웨어)</option>
        <option value="3">화장품</option>
        <option value="4">의약용품</option>
        <option value="5">디자인 제품(디자인 소품, 패션, 잡화 ,액세서리</option>
        <option value="4">디퓨저, 향초 등 위해 우려 제품</option>
        <option value="4">가공식품</option>
        <option value="4">건강기능식품</option>
        <option value="4">신선식품</option>
        <option value="4">문화(공연/영화 등)</option>
        <option value="4">출판</option>
        <option value="4">의료기기</option>
        <option value="4">위 항목에 없는 기타</option>
    </select>
    <textarea id="editor1" name="content" class="ckeditor"></textarea>
    <script>
    CKEDITOR.replace('editor1', {
        customConfig : '/plugin/ckeditor/config.js',
        width:'100%',
        height:'500',
        filebrowserImageUploadUrl: '/cke/imageUpload'
    });
    </script>
    <!-- inline 타입으로 생성 -->
    <textarea id="editor2" name="content" class="ckeditor"></textarea>
    <script>
    CKEDITOR.inline('editor2', {
        customConfig : '/plugin/ckeditor/config.js',
        width:'100%',
        height:'500',
        filebrowserImageUploadUrl: '/cke/imageUpload'
    });
    </script>
    
    
 
</body>

<script>
var food = '<table style=\"width:100%\">\
    <tr>\
        <th>test1</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test2</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test3</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test4</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test5</th>\
        <td></td>\
    </tr>    \
</table>';
var computer = '<table style="width:100%">\
    <tr>\
        <th>test11</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test21</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test31</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test41</th>\
        <td></td>\
    </tr>\
    <tr>\
        <th>test51</th>\
        <td></td>\
    </tr>    \
</table>';
var tea ='\
    <table style="width: 100%;">\
        <colgroup>\
            <col width="200px"/>\
            <col width="*">\
        </colgroup>\
        <tr>\
            <th>와디즈 심사 정책에 대한 안내</th>\
            <td></td>\
        </tr>\
        <tr>\
            <th>와디즈 심사 정책에 대한 안내</th>\
            <td></td>\
        </tr>\
        <tr>\
            <th>와디즈 심사 정책에 대한 안내</th>\
            <td></td>\
        </tr>\
        <tr>\
            <th>와디즈 심사 정책에 대한 안내</th>\
            <td></td>\
        </tr>\
        <tr>\
            <th>와디즈 심사 정책에 대한 안내</th>\
            <td></td>\
        </tr>    \
    </table>\
';
var item =[
food,
computer,
tea,
'<table><tr><td>식품의 유형2</td></tr></table>',
'<table><tr><td>식품의 유형3</td></tr></table>',
'<table><tr><td>식품의 유형4</td></tr></table>'
];
    $(function(){
        $("#test").change(function(){
            var val = $(this).val();
           CKEDITOR.instances["editor1"].setData(item[val]);
        });
    });
</script>
</html>