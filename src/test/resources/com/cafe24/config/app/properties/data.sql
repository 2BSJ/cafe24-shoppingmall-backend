/* User Test Data */
/* 기본 유저값 추가*/
INSERT 
	INTO user(no,name,id,password,reg_date,phone_number,age,address,email,gender,point,ordercount)
		VALUES( null, 
				'양승준',
		   		'test1', 
		   		SHA2('test123!!',512), 
		   		now(), 
		  		'010-9136-4365', 
		   		28, 
		   		AES_ENCRYPT('경기도 남양주시 호평동',SHA2('cafe',512)), 
		   		AES_ENCRYPT('yyg0825@naver.com',SHA2('cafe',512)), 
		   		'male',
		   		0,
		   		0);

/* Admin Category Data */
/* 기본 상위 카테고리값 추가 */
INSERT 
	INTO category
		VALUES(null, '상의', 1, (select 
								ifnull(MAX(tmp.group_no)+1, 1) 
								from category tmp));
								
