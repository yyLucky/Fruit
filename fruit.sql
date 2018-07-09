create database fruit charset=utf8;
use fruit;
#轮播
create table fruit_carousel(bid INT PRIMARY KEY AUTO_INCREMENT,
				   img VARCHAR(128),
				   title VARCHAR(64),
				   href VARCHAR(128)
				   );
insert into fruit_carousel values(null,'img/banner1.jpg','轮播广告商品1','04-list.html'),
							(null,'img/banner2.jpg','轮播广告商品2','04-list.html'),
							(null,'img/banner3.jpg','轮播广告商品3','04-list.html'),
							(null,'img/banner4.jpg','轮播广告商品4','04-list.html'),
							(null,'img/banner5.jpg','轮播广告商品5','04-list.html'),
							(null,'img/banner6.jpg','轮播广告商品6','04-list.html');
#首页商品,家庭量版 f1
create table f_index_floor1(pid INT PRIMARY KEY AUTO_INCREMENT,
							title VARCHAR(64),
							pic VARCHAR(128),
							price DECIMAL(4,2),
							spec VARCHAR(36),
							href VARCHAR(128));
insert into f_index_floor1 values(null,"深井冰椰青(原箱)","img/1-270.jpg","99","9个","07-product_list.html"),
													(null,"新西兰皇后红玫瑰苹果","img/1-270x.jpg","99","20个","07-product_list.html"),
													(null,"加拿大樱桃","img/1-270x2.jpg","238","4斤","07-product_list.html"),
													(null,"佳沛新西兰阳光金奇异果(巨无霸)(原箱)","img/1-270x6.jpg","189","22个","07-product_list.html"),
													(null,"橙先生-澳大利亚脐橙","img/1-270x27.jpg","118","24个","07-product_list.html"),
													(null,"佳沛新西兰有机绿奇异果","img/1-270x270.jpg","169","36个","07-product_list.html"),
													(null,"佳沛新西兰绿奇异果(巨无霸)(原箱)","/img/1-270x6.jpg","148","24个","07-product_list.html"),
													(null,"新西兰爵士苹果","img/1-270x270-2391-H6U152UT.jpg","118","20个","07-product_list.html"),
													(null,"安慕希希腊风味酸奶（高端畅饮系列）","img/1-270x270-3098-1S23DK3B.jpg","78","10瓶","07-product_list.html"),
													(null,"嘉月▪家欢聚月饼","img/1-270x270-3005-4RDWC889.jpg","328","1盒","07-product_list.html");
#首页，全球鲜果 f2
create table f_index_floor2(pid INT PRIMARY KEY AUTO_INCREMENT,
							title VARCHAR(64),
							pic VARCHAR(128),
							price DECIMAL(4,2),
							spec VARCHAR(36),
							href VARCHAR(128));
insert into f_index_floor2 values(null,"新疆弹汁无籽黑提","img/1-270x270-3009-F3UDB4PT.jpg","39","2斤","07-product_list.html"),
													(null,"橙先生-优选澳大利亚晚熟脐橙","img/1-270x270-3205-YPW2613B.jpg","49","6个","07-product_list.html"),
													(null,"云南高原生态蓝莓","img/1-270x270-2855-B8F8H11T.jpg","39","2盒","07-product_list.html"),
													(null,"珍珠李","img/1-270x270-3197-8SKX61S2.jpg","39","2斤","07-product_list.html"),
													(null,"新西兰脆柿","img/1-270x270-3117-YSX6KDUA.jpg","78","2个","07-product_list.html"),
													(null,"奇异小莓","img/1-270x270-3004-9C2546W5.jpg","48","2盒","07-product_list.html"),
													(null,"云南蒙自石榴","img/1-270x270-2994-C4PK8CRD.jpg","39","6个","07-product_list.html"),
													(null,"澳大利亚蜜桔","img/1-270x270-2993-FDWS38B1.jpg","49","6个","07-product_list.html"),
													(null,"加拿大蓝莓","img/1-270x270-2855-B8F8H11T.jpg","58","2盒","07-product_list.html"),
													(null,"新西兰小苹果ROCKIT（3个装）","img/1-270x.jpg","39","3个","07-product_list.html");
#首页，生鲜美食 f3
create table f_index_floor3(pid INT PRIMARY KEY AUTO_INCREMENT,
							title VARCHAR(64),
							pic VARCHAR(128),
							price DECIMAL(4,2),
							spec VARCHAR(36),
							href VARCHAR(128));
insert into f_index_floor3 values(null,"美国圣路易斯猪肋排","img/1-270x270-2860-PWPS41TR.jpg","128","1.5","07-product_list.html"),
													(null,"山林咸草鸡","img/1-270x270-2865-B5R1WT8H.jpg","35","500g","07-product_list.html"),
													(null,"山林风酱鸭","img/1-270x270-2864-A88W98S3.jpg","15.8","400g","07-product_list.html"),
													(null,"新西兰牛脊骨","img/1-270x270-316-AS7R2CAD.jpg","39.9","500g","07-product_list.html"),
													(null,"越南生冻黑虎虾仁","img/1-270x270-2032-H9AHA87X.jpg","39","200g","07-product_list.html"),
													(null,"山林凤鹅","img/1-270x270-2867-79P6CCS7.jpg","36.9","500g","07-product_list.html"),
													(null,"泰森鸡翅根","img/1-270x270-992-C1Y2R5D9.jpg","10.9","220g","07-product_list.html"),
													(null,"阿根廷雪花鲳鱼","img/1-270x270-185-XDFCXH6K.jpg","29.9","300g~400g","07-product_list.html"),
													(null,"玛姆鲁克葵花籽油","img/1-270x270-2082-XCCXBBT1.jpg","25.8","1L","07-product_list.html"),
													(null,"养乐多活菌性乳酸菌饮品","img/1-270x270-2745-X7W4PK7D.jpg","11.9","100ml*5","07-product_list.html");
#轮播下四张图片
create table f_index_middle_pic(mid INT PRIMARY KEY AUTO_INCREMENT,
															img VARCHAR(128),
															title VARCHAR(128)
															);
insert into f_index_middle_pic values(null,"img/daed8a6f5f15a6aa270c4f8b83699b27.jpg","轮播下图片1"),
																		(null,"img/e1768b688c4873dc4cd47265609a9209.jpg","轮播下图片2"),
																		(null,"img/5cdc91f55efbc7a3a92abeda4fc90bb6.jpg","轮播下图片3"),
																		(null,"img/200842a4d3dc55d6b560902543fa8fb5.jpg","轮播下图片4");
#鲜果列表页
create table f_fruit_list(fid  INT PRIMARY KEY AUTO_INCREMENT,
                        title VARCHAR(64),
                        img VARCHAR(128),
                        price DECIMAL(4,2),
                        spec VARCHAR(36),
                        href VARCHAR(128));
insert into f_fruit_list values(null,"嫦娥的礼物","img/1-270x270-3120-D6PX1SF6.jpg",98,"一盒","07-product_list.html"),
                                (null,"花好月圆礼盒（含月饼）","img/imglist/1-100x100-3122-U4C8223H.jpg",118,"一盒","07-product_list.html"),
                                (null,"月满乾坤礼盒A款（含月饼）","img/imglist/1-270x270-3124-D96BT1SR.jpg",268,"一盒","07-product_list.html"),
                                (null,"众星拱月礼盒（含月饼）","img/imglist/1-270x270-2989-SUR4FKFB.jpg",558,"一盒","07-product_list.html"),
                                (null,"墨西哥牛油果","img/imglist/1-270x270-7-15SS31WX(1).jpg","39.9","三个","07-product_list.html"),
                                (null,"越南火龙果","img/imglist/1-270x270-6-A1AT7Y87(1).jpg","49.9","一盒","07-product_list.html"),
                                (null,"越南红心火龙果（小）","img/imglist/1-270x270-5-5SS92K22.jpg","29.9","一盒","07-product_list.html"),
                                (null,"进口香蕉","img/imglist/1-270x270-19-ADP7PA1S.jpg","29.9","一盒","07-product_list.html"),
                                (null,"海南木瓜","img/imglist/1-270x270-20-B4Y378KF.jpg","29.9","3个","07-product_list.html"),
                                (null,"陕西冬枣","img/imglist/1-270x270-2685-TY84W1CX(1).jpg","19.00","1斤","07-product_list.html"),
                                (null,"深情厚谊水果提货蓝","img/imglist/1-270x270-839-U6X566YT.jpg",580,"1张","07-product_list.html"),
                                (null,"欢乐时光礼篮提货券","img/imglist/1-270x270-840-XRC34136.jpg",188,"1张","07-product_list.html"),
                                (null,"情真意切礼篮提货券","img/imglist/1-270x270-838-44T71SAR.jpg",238,"1张","07-product_list.html"),
                                (null,"深井冰青椰","img/1-270.jpg","29.9","2个","07-product_list.html"),
                                (null,"精选百果香","img/imglist/1-270x270-3270-H79W9H7B.jpg","12","3个","07-product_list.html"),
                                (null,"大凉山野生苹果","img/imglist/1-270x270-2095-A5RRT2SA.jpg",78,"10斤","07-product_list.html"),
                                (null,"大凉山野生苹果","img/imglist/1-270x270-2455-KHYAS2K7.jpg","39.9","5斤","07-product_list.html"),
                                (null,"大个云南蒙自石榴","img/imglist/1-270x270-3145-5DUXHHCH(1).jpg",25,"2个","07-product_list.html"),
                                (null,"大个云南蒙自石榴","img/imglist/1-270x270-3145-5DUXHHCH.jpg",68,"12个","07-product_list.html"),
                                (null,"美国有籽红提","img/imglist/1-270x270-2930-44UA73CF.jpg",148,"4斤","07-product_list.html"),
                                (null,"青皮凯特芒果","img/imglist/1-270x270-2987-1YX973FS.jpg","39.9","5斤","07-product_list.html"),
                                (null,"佳沛新西兰阳光金奇异果","img/imglist/1-270x270-2911-K5H335W4.jpg",88,"16个","07-product_list.html"),
                                (null,"大个奇异果","img/imglist/1-270x270-22815-1WK388BC.jpg","29.9","3个","07-product_list.html"),
                                (null,"低糖营养鲜果礼盒","img/imglist/1-270x270-16463-UC68KAU2.jpg",168,"1盒","07-product_list.html"),
                                (null,"慧心礼盒","img/imglist/1-270x270-415-D45A5SWR.jpg",88,"1盒","07-product_list.html"),
                                (null,"智慧body套餐","img/imglist/1-270x270-415-D45A5SWR.jpg",68,"1份","07-product_list.html"),
                                (null,"新西兰皇后礼盒","img/imglist/1-270x270-3121-SKP75KT5.jpg",188,"1盒","07-product_list.html"),
                                (null,"橙先生","img/imglist/1-270x270-2880-PSD7WSDC(1).gif",88,"1盒","07-product_list.html"),
                                (null,"阳光柚","img/imglist/1-270x270-2862-1S1RU7A8.jpg",28,"1个","07-product_list.html"),
                                (null,"低糖礼盒","img/imglist/1-270x270-435-PSDX7FH7.jpg",218,"1盒","07-product_list.html");
#用户表
create table f_user(uid INT PRIMARY KEY AUTO_INCREMENT,
                            uname VARCHAR(16),
                            upwd VARCHAR(16),
                            email VARCHAR(16),
                            phone VARCHAR(16),
                            avatar VARCHAR(64),
                            gender int(1),
                            user_name VARCHAR(16));
insert into f_user values(null,'dingding','123','15866666666','123@.com','img/img.jpg',0,'张丁丁'),
                        (null,'doudou','321','15866666699','123@.com','img/img.jpg',1,'张豆豆'),
                       (null,'yaya','666','15866666688','321@.com','img/user.png',0,'王亚亚'),
                       (null,'tom','888','15866666688','135@.com','img/img.jpg',1,'汤姆'),
                       (null,'mary','999','15866699988','246@.com','img/user.png',0,'玛丽'),
                       (null,'dangdang','666','15866666688','789@.com','img/user.png',0,'当当');
#生鲜列表页
create table f_seafood_list(fid  INT PRIMARY KEY AUTO_INCREMENT,
                        title VARCHAR(64),
                        img VARCHAR(128),
                        price DECIMAL(4,2),
                        spec VARCHAR(36),
                        href VARCHAR(128));
insert into f_seafood_list values(null,"草原和牛牛小排","img/seafood/1-270x270-302-CBKBKXSW.jpg",89.00,"250g","07-product_list.html"),
                                (null,"泰森鸡翅中","img/seafood/1-270x270-2732-RK8K4X5R.jpg",22.80,"220g","07-product_list.html"),
                                (null,"刺身组合","img/seafood/1-270x270-2556-D6F8A8T2.jpg",69.80,"组1份","07-product_list.html"),
                                (null," 鲜曝大黄鱼","img/seafood/1-270x270-201-TH1KTBHA.jpg",49.90,"270g","07-product_list.html"),
                                (null," 兰皇鸡蛋","img/seafood/1-270x270-474-5KD4A4TH.jpg","32.80 ","10只","07-product_list.html"),
                                (null," 本地黄瓜","img/seafood/1-270x270-6-A1AT7Y87(1).jpg","4.80","400g","07-product_list.html"),
                                (null,"pelagos南美白对虾","img/seafood/1-270x270-488-3A7HW2RF.jpg","59","500g","07-product_list.html"),
                                (null,"智利爱阁鸡翅中","img/seafood/1-270x270-199-6B353WAP.jpg","65.9","1000g","07-product_list.html"),
                                (null," 娃娃菜","img/seafood/1-270x270-333-SWHB89FU.jpg","11.90","500g","07-product_list.html"),
                                (null," 日式素鲍鱼","img/seafood/1-270x270-45-71W27FCS.jpg","19.9","230g","07-product_list.html"),
                                (null,"紫薯","img/seafood/1-270x270-104-A9TH8RDH.jpg","11.9","500g","07-product_list.html"),
                                (null,"思念迪士尼米奇豆沙包","img/seafood/1-270x270-79-85T3TK45.jpg",28,"100g","07-product_list.html"),
                                (null,"法国银鳕鱼","img/seafood/1-270x270-17031-STD6H9RW.jpg",168.00,"220g","07-product_list.html"),
                                (null," 精选银鱼","img/seafood/1-270x270-206-7H16A6S5.jpg","26","200g","07-product_list.html"),
                                (null," 青甘蓝","img/seafood/1-270x270-328-7H3XS251.jpg","7.90","600g","07-product_list.html"),
                                (null," 水笋","img/seafood/1-270x270-277-AYY59D5C.jpg",11.90,"300g","07-product_list.html"),
                                (null,"荷美尔超值精选培根","img/seafood/1-270x270-214-BWD98AAX.jpg","19.9","150g","07-product_list.html"),
                                (null,"菌菇组合","img/seafood/1-270x270-673-2B2556B5",9.9,"200g","07-product_list.html"),
                                (null,"丹麦皇冠谷饲猪脚","img/seafood/1-270x270-229-UY9DW349.jpg",25.90,"400g","07-product_list.html"),
                                (null,"精选毛豆","img/seafood/1-270x270-671-4B91XTHT.jpg",29.00,"500g","07-product_list.html"),
                                (null,"紫薯芝士年糕","img/seafood/1-270x270-82-4XFCY3KB.jpg","39.9","500g","07-product_list.html"),
                                (null," 黄秋葵","img/seafood/1-270x270-239-Y7W1HKPC.jpg",11.90,"200g","07-product_list.html"),
                                (null," 花菜","img/seafood/1-270x270-22815-1WK388BC.jpg","7.20","500g","07-product_list.html"),
                                (null,"大番茄","img/seafood/1-270x270-227-S2UDUB94.jpg",5.0,"300g","07-product_list.html"),
                                (null,"加拿大北极甜虾","img/seafood/1-270x270-494-F6R5AKCW.jpg",46.00,"400g","07-product_list.html"),
                                (null,"日式烧烤青花鱼","img/seafood/1-270x270-637-1D9C89FH.jpg",19.00,"100-150g","07-product_list.html"),
                                (null,"优选东海带鱼段","img/seafood/1-270x270-186-RWX3UAB3.jpg",32.90,"400g","07-product_list.html"),
                                (null,"澳大利亚安格斯谷饲菲力牛排","img/seafood/1-270x270-318-RTUFH28C.jpg",88,"150g","07-product_list.html"),
                                (null,"鲜冻三文鱼块","img/seafood/1-270x270-203-696T9A7A.jpg",55.00,"250g","07-product_list.html"),
                                (null,"潮州芝士牛肉丸","img/seafood/1-270x270-174-H9443XA4.jpg",29.90,"150g","07-product_list.html");






