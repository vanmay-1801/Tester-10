USE Testing_System_Assignment_1;

INSERT INTO Testing_System_Assignment_1.Department 		(department_name)
VALUES
							(N'Sale'					),
							(N'Marketing'				),
							(N'Accounting'				),
							(N'Customer Service'		),
							(N'Human Resources'			);
 
INSERT INTO `Position`		(position_name)
VALUES						
							(N'Dev'						),
                            (N'Test'					),
                            (N'Scrum Master'			),
                            (N'PM'						);

INSERT INTO `Account` 		(email, 						use_name,			full_name,			department_id,		position_id,		create_date)
VALUES						
							(N'ngocbich1307@gmail.com',   	'bichti',			'Phạm Ngọc Bích',	'1',				'2',				'2022/01/13'),
							(N'kieuchinh20@gmail.com',		'chinhpham',		'Phạm Kiều Chinh',	'4',				'2',				'2021/11/20'),
							(N'nhatvi1699@gmail.com',		'nguyetnguyet',		'Trần Nhật Vi',		'5',				'3',				'2021/04/16'),
							(N'dtv1801@gmail.com',			'dtv.1801',			'Đàm Thanh Vân',	'5',				'2',				'2022/06/19'),
							(N'maycloud01@gmail.com',		'cloud',			'Lã Mây Mây',		'1',				'1',				'2022/06/15');
                        
INSERT INTO `Group` 		(group_name,					creator_id,			creator_date)
VALUES
							(N'Testing System',				'1',				'2021/01/01'),
							(N'Developement',				'5',				'2021/01/01'),
							(N'VTI Sale',					'3',				'2021/01/01'),
							(N'VTI Marketing',				'4',				'2021/01/01'),
							(N'Management',                 '2',      			'2021/01/01');	
                        
INSERT INTO GroupAccount	(account_id,					join_date)
VALUES						
							(N'1',							'2022/01/13'),							
							(N'2',							'2021/11/20'),
							(N'3',							'2021/04/16'),
                            (N'4',							'2022/06/19'),
                            (N'5',							'2022/06/15');
                            
INSERT INTO Typequestion	(type_name)
VALUES						
							(N'Essay'),
                            (N'Multiple-Choice');
                            
INSERT INTO	CategoryQuestion(category_name)
VALUES
							(N'Java'),
                            (N'.NET'),
                            (N'SQL'),
                            (N'Postman'),
                            (N'Ruby');
						
INSERT INTO Question		(content,						category_id,		type_id,			creator_id,			creator_date)
VALUES	
							(N'Hỏi về Java',				'1',				'2',				'5',   				'2022/06/19'),
							(N'Hỏi về .NET',				'2',				'2',				'5',				'2022/06/20'),
                            (N'Hỏi về SQL',					'3',				'1',				'3',				'2021/04/21'),
                            (N'Hỏi về Postman',				'4',				'1',				'1',				'2022/01/18'),
                            (N'Hỏi về Ruby',				'5',				'2',				'2',				'2021/11/20');
                            
INSERT INTO Answer			(content,						question_id,		is_correct)      
VALUES
							(N'Trả lời 1',					'1',				'Đúng'),
                            (N'Trả lời 2',					'2',				'Đúng'),
							(N'Trả lời 3',					'3',				'Đúng'),
                            (N'Trả lời 4',					'4',				'Sai'),	
                            (N'Trả lời 5',					'5',				'Sai');
                            
INSERT INTO Exam			(`code`,						title,				category_id,			duration,		creator_id,			create_date)
VALUES
							(N'101',						'Đề thi Java',		'1',					'45',			'5',				'2022/07/01'),
                            (N'102',						'Đề thi .NET',		'2',					'45',			'5',				'2022/07/01'),	
                            (N'103',						'Đề thi SQL',		'3',					'45',			'3',				'2022/07/02'),
                            (N'104',						'Đề thi Postman',	'4',					'45',			'1',				'2022/07/03'),
                            (N'105',						'Đề thi Ruby',		'5',					'45',			'2',				'2022/07/04');
INSERT INTO ExamQuestion	(exam_id,						question_id)
VALUES						(N'1',							'1'),
							(N'2',							'2'),
                            (N'3',							'3'),
                            (N'4',							'4'),
                            (N'5',							'5');
                            
                            
				
                            
                        
                        