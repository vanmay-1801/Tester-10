-- Q2 lấy ra tất cả các phòng ban
SELECT * FROM Department;

SELECT * FROM `Position`;

SELECT email, full_name FROM `Account`;

-- Q3 lấy ra id của phòng ban "Sale"
SELECT department_id FROM Department 
WHERE department_name = 'Sale'; 

SELECT position_id FROM `Position`
WHERE position_name = 'Test';

-- Q4 lấy ra thông tin account có full name dài nhất và sắp xếp chúng theo thứ tự giảm dần
SELECT * FROM `Account` 
WHERE char_length(full_name)
ORDER BY  char_length(full_name) DESC; 

SELECT * FROM `Account`
WHERE char_length(full_name) = (SELECT MAX(char_length(full_name)) FROM `Account`);

SELECT full_name FROM `Account`
WHERE char_length(full_name) = 18; 

-- Q5 Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
SELECT full_name, department_id FROM `Account`
WHERE char_length(full_name) AND department_id =3
LIMIT 1;

-- Q6 lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT * FROM `Group`
WHERE creator_date <= '2019/12/20';

-- Q7 Lấy ra ID của question có >= 4 câu trả lời
SELECT question_id 
FROM Answer
HAVING COUNT(content) >= 4;

-- Q8 Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT * FROM Exam
WHERE `code` AND duration >= 60 AND create_date <= '2019/12/20';

-- Q9 Lấy ra 5 group được tạo gần đây nhất
SELECT group_name FROM `group`
ORDER BY creator_date DESC
LIMIT 5;

-- Q10 Đếm số nhân viên thuộc department có id = 2
SELECT COUNT(full_name) FROM `Account`
WHERE department_id =2;

-- Q11 Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT * FROM `Account`
WHERE full_name LIKE 'D%o';

-- Q12 xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE  FROM Exam
WHERE create_date <= '2019/12/20' ; -- Đang ràng buộc bảng khác không chạy đc 

-- Q13 xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE FROM Question
WHERE content = 'Câu Hỏi%'; -- Đang ràng buộc bảng khác không chạy đc 

-- Q14 update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account`
SET full_name = 'Nguyễn Bá Lộc',
	email = 'loc.nguyenba@vti.com.vn'
WHERE account_id = 5;

-- Q15 update account có id = 5 sẽ thuộc group có id = 4
UPDATE `Group` 		
SET group_id = 4
WHERE account_id = 5;  -- Đang ràng buộc bảng khác không chạy đc 







