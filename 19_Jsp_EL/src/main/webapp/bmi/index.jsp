<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI 계산기</title>
    <style>
        body {
            font-family: 'Pretendard', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            background: white;
            padding: 2.5rem;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            width: 380px;
        }

        .title {
            font-size: 1.8rem;
            font-weight: 800;
            color: #2c3e50;
            margin-bottom: 2rem;
            text-align: center;
        }

        .input-group {
            margin-bottom: 1.2rem;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #576574;
            font-size: 0.9rem;
            font-weight: 600;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 2px solid #edf2f7;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 1rem;
            transition: 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #3498db;
            background-color: #f8fbff;
        }

        /* 사진 업로드 스타일링 */
        .file-upload {
            border: 2px dashed #cbd5e0;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
            cursor: pointer;
            margin-bottom: 1rem;
            position: relative;
        }

        .file-upload:hover {
            background: #f7fafc;
            border-color: #3498db;
        }

        #preview {
            width: 100%;
            max-height: 150px;
            object-fit: contain;
            margin-top: 10px;
            display: none;
            border-radius: 8px;
        }

        button {
            width: 100%;
            padding: 15px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(52, 152, 219, 0.2);
            transition: 0.3s;
        }

        button:hover {
            background: #2980b9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
<div class="container">
    <div class="title">BMI 계산기</div>
    <form action="bmi" method="post" enctype="multipart/form-data">
        <div class="input-group">
            <label>이름</label> <input name="name" type="text"
                                     placeholder="이름 (2글자 이상)" required minlength="2">
        </div>
        <div class="input-group">
            <label>키 (cm)</label> <input name="height" type="number" step="0.1"
                                         min="100" placeholder="숫자(3글자 이상)" required>
        </div>
        <div class="input-group">
            <label>체중 (kg)</label> <input name="weight" type="number" step="0.1"
                                          placeholder="숫자" required>
        </div>

        <div class="input-group">
            <label>변화 기록용 사진</label> <input name="pic" type="file"
                                            accept="image/*">
        </div>

        <button >지금 바로 검사하기</button>
    </form>
</div>
</body>
</html>