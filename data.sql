/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-10-09 11:18:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', 'knowless', 'knowless_1.jpg');
INSERT INTO `album` VALUES ('2', 'knowless', 'knowless_2.jpg');
INSERT INTO `album` VALUES ('3', 'knowless', 'knowless_3.jpg');
INSERT INTO `album` VALUES ('4', 'knowless', 'knowless_4.jpg');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `day` int(1) NOT NULL,
  `month` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '14', '三月', '瘦毛猴的爱情？', '一只鱼言于郑表达方式打飞机收到货福建省倒海翻江');
INSERT INTO `article` VALUES ('2', '14', '五月', '我们是否都在寻找一种超越？', '我们是否都在寻找一种超越？');

-- ----------------------------
-- Table structure for article_detail
-- ----------------------------
DROP TABLE IF EXISTS `article_detail`;
CREATE TABLE `article_detail` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `article_id` int(1) NOT NULL,
  `class` varchar(20) NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_detail
-- ----------------------------
INSERT INTO `article_detail` VALUES ('1', '1', 'title', '开车冲进水里应该怎么自救');
INSERT INTO `article_detail` VALUES ('2', '1', 'pagetitle', '1、大部分人都认为车辆如果掉进水里');
INSERT INTO `article_detail` VALUES ('3', '1', 'section', '大部分人都认为车辆如果掉进水里，车门肯定打不开。其实不是的，在车辆冲进水里的几分钟之内，车辆还没有完全沉浸入水中，这个时候力气大是可以打开门的。在这个时候，我们可以迅速打开车门进行逃生。而且，在这段时间内，车辆可能还没有断电，窗户也是可以打开的。如果打不开，破窗逃生吧。');
INSERT INTO `article_detail` VALUES ('4', '1', 'pagetitle', '2、车辆冲进水中后');
INSERT INTO `article_detail` VALUES ('5', '1', 'section', '车辆冲进水中后，千万不要觉得不会游泳就放弃逃生了。这不对吧，毕竟冲进水的时候，肯定旁边有看到的人，如果你从车里逃出来的话，别人看到了还可以去救你呢。');
INSERT INTO `article_detail` VALUES ('6', '1', 'pagetitle', '3、车辆在冲进水中后');
INSERT INTO `article_detail` VALUES ('7', '1', 'section', '车辆在冲进水中后，一定要打开车灯吸引附近人的注意力。这样逃生的几率也会大一些。千万不要坐以待毙。在车里逃出来后，如果真的不会水，可以暂时先爬上车顶等待救援。因为车辆下沉还是需要一段时间的。不要慌张就好。');
INSERT INTO `article_detail` VALUES ('8', '2', 'title', '我们是否都在寻找一种超越？');
INSERT INTO `article_detail` VALUES ('9', '2', 'pagetitle', '1、大部分人都认为车辆如果掉进水里');
INSERT INTO `article_detail` VALUES ('10', '2', 'section', '大部分人都认为车辆如果掉进水里，车门肯定打不开。其实不是的，在车辆冲进水里的几分钟之内，车辆还没有完全沉浸入水中，这个时候力气大是可以打开门的。在这个时候，我们可以迅速打开车门进行逃生。而且，在这段时间内，车辆可能还没有断电，窗户也是可以打开的。如果打不开，破窗逃生吧。');
INSERT INTO `article_detail` VALUES ('11', '2', 'pagetitle', '2、车辆冲进水中后');
INSERT INTO `article_detail` VALUES ('12', '2', 'section', '车辆冲进水中后，千万不要觉得不会游泳就放弃逃生了。这不对吧，毕竟冲进水的时候，肯定旁边有看到的人，如果你从车里逃出来的话，别人看到了还可以去救你呢。');
INSERT INTO `article_detail` VALUES ('13', '2', 'pagetitle', '3、车辆在冲进水中后');
INSERT INTO `article_detail` VALUES ('14', '2', 'section', '车辆在冲进水中后，一定要打开车灯吸引附近人的注意力。这样逃生的几率也会大一些。千万不要坐以待毙。在车里逃出来后，如果真的不会水，可以暂时先爬上车顶等待救援。因为车辆下沉还是需要一段时间的。不要慌张就好。');

-- ----------------------------
-- Table structure for book_movie_music
-- ----------------------------
DROP TABLE IF EXISTS `book_movie_music`;
CREATE TABLE `book_movie_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `img_src` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `message` varchar(100) NOT NULL DEFAULT '',
  `excerpt` varchar(2000) NOT NULL DEFAULT '',
  `comment` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_movie_music
-- ----------------------------
INSERT INTO `book_movie_music` VALUES ('1', '0', 'book', '/book_movie_music/book/book_1.jpg', '哲学家们都干了些什么？', '林欣浩/ 辽宁教育出版社 / 274页 / 2011-5', '1.我们追求个人幸福的最高境界，不是纵欲，而是内心的平静。&2.统计学上有一句经典的话，相关性不代表因果性。&3.人的知识像一个圆圈, 知识越多，圆圈对周长越长，就会发现自己越无知。', '为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。&为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。&为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。');
INSERT INTO `book_movie_music` VALUES ('2', '1', 'book', '/book_movie_music/book/book_2.jpg', '横道世之介', '吉田修一/ 上海人民出版社/ 416页 / 2018-6', '1.\"祥子，你真的喜欢他吗？\" \"……嗯，我非常、非常喜欢他，有时候太喜欢了，喜欢到连我自己都生气。不过，都已经分手很久了，现在也想不起来当时为什么会分手。毕竟那时候才十几岁而已，也不是什么需要做决定的年龄。\" \"你们大概交往了多久？\" \"一年多……现在想起来，分手的理由肯定很无聊。\" \"像我们这种在富裕国家长大的年轻男女，分手的理由除了荒唐、无聊以外，找不出第二个……\" 听了希薇亚的玩笑话，我无奈地笑...', '横道世之介年纪不大，升入大学的时候十八岁，到死也才不过四十岁。他的名字\"世之介\"，是日本江户时代的作家井原西鹤小说《好色一代男》中的人物，理想是尝遍世间的美色。但大学生横道世之介是个谈到理想就会脸红的男孩，浑浑噩噩好像也没什么理想。他即将升入大二时，从前辈手里得到了一部相机，没有目的地对着身边的事物乱拍，后来成为一名摄影师。&如果我们在现实生活中认识世之介这个人，我们可能会遗憾旁人无法再认识世之介而不想过多描述他。就像《横道世之介》这部小说中，一些人在后来想到世之介时，他们躲避着不愿说起他，只是独自怀念着世之介，感激相识他的幸运。&日本小说家吉田修一的代表作《横道世之介》曾在2013年被导演冲田修一改编为同名电影，感动了万千观众。遗憾的是，这部原著小说在国内始终没有较好的译本。一直等到现在，世纪文景终于再版了它。也许你已经看过那部电影，但仍想真诚推荐给你读这部小说。如果你还在世之介十八九岁的年纪，刚刚进入大学，这部小说或许还能帮你指清一些生活交友上的方向。');
INSERT INTO `book_movie_music` VALUES ('3', '0', 'movie', '/book_movie_music/movie/movie_1.jpg', '横道世之介', ' 冲田修一/160分钟/2013-02-23', '/book_movie_music/movie/movie_1_1.jpg&/book_movie_music/movie/movie_1_2.jpg', '又是一部将小说影视化的成功典范，电影从头至尾都散发着一股小人物的正能量，可以说160分钟看下来还有种意犹未尽的感觉。高良健吾所饰演的横道世之介是一个很有意思的家伙，片子通过种种生活细节以及朋友的回忆使得这个人物相当丰满，而一句“认识他真是值了”应该是对其最好的评价。');
INSERT INTO `book_movie_music` VALUES ('4', '1', 'movie', '/book_movie_music/movie/movie_2.jpg', '情书', '岩井俊二/117分钟/1995-03-25', '/book_movie_music/movie/movie_2_1.jpg&/book_movie_music/movie/movie_2_2.jpg', '暗恋最好的诠释');
INSERT INTO `book_movie_music` VALUES ('5', '0', 'music', '/book_movie_music/music/1.jpg', '龙卷风', '周杰伦/Jay/2000-11-13 ', '/book_movie_music/music/1.mp3&/book_movie_music/music/1.lrc', '简直前卫！前卫到儿时的我需要强迫自己自己接受它！当时哪个歌手会把自己名字在歌里反复唱一段当水印啊！还有印第安老斑鸠那他妈什么歌词啊当时谁敢这样写歌词的？？还有谁敢像娘子那样叽里咕噜地念叨啊？？反方向的钟！这首歌虽然我唱不上去但是KTV必点！');
INSERT INTO `book_movie_music` VALUES ('6', '1', 'music', '/book_movie_music/music/2.jpg', '同桌的你', '老狼/恋恋风尘/1995', '/book_movie_music/music/2.mp3&/book_movie_music/music/2.lrc', '明天你是否会想起\r\n昨天你写的日记\r\n明天你是否还惦记\r\n曾经最爱哭的你\r\n老师们都已想不起\r\n猜不出问题的你\r\n我也是偶然翻相片\r\n才想起同桌的你\r\n谁娶了多愁善感的你\r\n谁看了你的日记\r\n谁把你的长发盘起\r\n谁给你做的嫁衣\r\n你从前总是很小心\r\n问我借半块橡皮\r\n你也曾无意中说起\r\n喜欢和我在一起\r\n那时候天总是很蓝\r\n日子总过得太慢\r\n你总说毕业遥遥无期\r\n转眼就各奔东西\r\n谁遇到多愁善感的你\r\n谁安慰爱哭的你\r\n谁看了我给你写的信\r\n谁把它丢在风里\r\n从前的日子都远去\r\n我也将有我的妻\r\n我也会给她看相片\r\n给她讲同桌的你\r\n谁娶了多愁善感的你\r\n谁安慰爱哭的你\r\n谁把你的长发盘起\r\n谁给你做的嫁衣\r\n啦……啦……\r\n啦……啦……\r\n啦……啦……\r\n啦……啦……');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `item_id` int(1) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'whimsy', '2019-09-26', '哈哈哈');
INSERT INTO `comment` VALUES ('2', '1', 'message', '2019-09-27', '我是一只鱼');
INSERT INTO `comment` VALUES ('3', '1', 'whimsy', '2019-09-29', '我来了我来了');

-- ----------------------------
-- Table structure for whimsy
-- ----------------------------
DROP TABLE IF EXISTS `whimsy`;
CREATE TABLE `whimsy` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `img_urls` varchar(300) NOT NULL,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of whimsy
-- ----------------------------
INSERT INTO `whimsy` VALUES ('1', '2019-09-26 12:00:00', '../assets/img/timeAlbum/1.jpg&../assets/img/timeAlbum/2.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('2', '2019-09-27 12:00:00', '../assets/img/timeAlbum/3.jpg&../assets/img/timeAlbum/4.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('3', '2019-09-28 12:00:00', '../assets/img/timeAlbum/5.jpg&../assets/img/timeAlbum/6.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('4', '2019-09-29 12:00:00', '../assets/img/timeAlbum/7.jpg&../assets/img/timeAlbum/8.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('5', '2019-09-30 12:00:00', '../assets/img/timeAlbum/9.jpg&../assets/img/timeAlbum/10.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('6', '2019-10-01 12:00:00', '../assets/img/timeAlbum/11.jpg&../assets/img/timeAlbum/12.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
