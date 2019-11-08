/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-11-08 17:02:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', 'knowless', '/timeAlbum/knowless_1.jpg');
INSERT INTO `album` VALUES ('2', 'knowless', '/timeAlbum/knowless_2.jpg');
INSERT INTO `album` VALUES ('3', 'knowless', '/timeAlbum/knowless_3.jpg');
INSERT INTO `album` VALUES ('4', 'knowless', '/timeAlbum/knowless_4.jpg');
INSERT INTO `album` VALUES ('5', 'primaryschool', '/timeAlbum/primaryschool_1.jpg');
INSERT INTO `album` VALUES ('6', 'primaryschool', '/timeAlbum/primaryschool_2.jpg');
INSERT INTO `album` VALUES ('7', 'primaryschool', '/timeAlbum/primaryschool_3.jpg');
INSERT INTO `album` VALUES ('8', 'primaryschool', '/timeAlbum/primaryschool_4.jpg ');
INSERT INTO `album` VALUES ('9', 'middleschool', '/timeAlbum/middleschool_1.jpg');
INSERT INTO `album` VALUES ('10', 'middleschool', '/timeAlbum/middleschool_2.jpg');
INSERT INTO `album` VALUES ('11', 'middleschool', '/timeAlbum/middleschool_3.jpg');
INSERT INTO `album` VALUES ('12', 'middleschool', '/timeAlbum/middleschool_4.jpg');
INSERT INTO `album` VALUES ('13', 'highschool', '/timeAlbum/highschool_1.jpg');
INSERT INTO `album` VALUES ('14', 'highschool', '/timeAlbum/highschool_2.jpg');
INSERT INTO `album` VALUES ('15', 'highschool', '/timeAlbum/highschool_3.jpg');
INSERT INTO `album` VALUES ('16', 'highschool', '/timeAlbum/highschool_4.jpg ');
INSERT INTO `album` VALUES ('17', 'university', '/timeAlbum/university_1.jpg');
INSERT INTO `album` VALUES ('18', 'university', '/timeAlbum/university_2.jpg');
INSERT INTO `album` VALUES ('19', 'university', '/timeAlbum/university_3.jpg');
INSERT INTO `album` VALUES ('20', 'university', '/timeAlbum/university_4.jpg ');
INSERT INTO `album` VALUES ('21', 'atwork', '/timeAlbum/atwork_1.jpg');
INSERT INTO `album` VALUES ('22', 'atwork', '/timeAlbum/atwork_2.jpg');
INSERT INTO `album` VALUES ('23', 'atwork', '/timeAlbum/atwork_3.jpg');
INSERT INTO `album` VALUES ('24', 'atwork', '/timeAlbum/atwork_4.jpg ');

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_movie_music
-- ----------------------------
INSERT INTO `book_movie_music` VALUES ('1', '0', 'book', '/book_movie_music/book/book_1.jpg', '哲学家们都干了些什么？', '林欣浩/ 辽宁教育出版社 / 274页 / 2011-5', '1.我们追求个人幸福的最高境界，不是纵欲，而是内心的平静。&2.统计学上有一句经典的话，相关性不代表因果性。&3.人的知识像一个圆圈, 知识越多，圆圈对周长越长，就会发现自己越无知。', '为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。&为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。&为了通俗易懂放弃严谨的科普，相当于哲学入门介绍帖集合，还参杂了作者本人不靠谱的理解和故作风趣的语言，让人十分难受。最可怕的是，作者对许多哲学学说和科学理论的解释多有谬误，误人子弟。并且作者可能是个带路党，字里行间充满对中国哲学的嘲讽和不屑，牵强附会，还黑得很低端。但也并非一无是处，有些哲学理论解释和介绍还是能看的。');
INSERT INTO `book_movie_music` VALUES ('2', '1', 'book', '/book_movie_music/book/book_2.jpg', '横道世之介', '吉田修一/ 上海人民出版社/ 416页 / 2018-6', '1.\"祥子，你真的喜欢他吗？\" \"……嗯，我非常、非常喜欢他，有时候太喜欢了，喜欢到连我自己都生气。不过，都已经分手很久了，现在也想不起来当时为什么会分手。毕竟那时候才十几岁而已，也不是什么需要做决定的年龄。\" \"你们大概交往了多久？\" \"一年多……现在想起来，分手的理由肯定很无聊。\" \"像我们这种在富裕国家长大的年轻男女，分手的理由除了荒唐、无聊以外，找不出第二个……\" 听了希薇亚的玩笑话，我无奈地笑...', '横道世之介年纪不大，升入大学的时候十八岁，到死也才不过四十岁。他的名字\"世之介\"，是日本江户时代的作家井原西鹤小说《好色一代男》中的人物，理想是尝遍世间的美色。但大学生横道世之介是个谈到理想就会脸红的男孩，浑浑噩噩好像也没什么理想。他即将升入大二时，从前辈手里得到了一部相机，没有目的地对着身边的事物乱拍，后来成为一名摄影师。&如果我们在现实生活中认识世之介这个人，我们可能会遗憾旁人无法再认识世之介而不想过多描述他。就像《横道世之介》这部小说中，一些人在后来想到世之介时，他们躲避着不愿说起他，只是独自怀念着世之介，感激相识他的幸运。&日本小说家吉田修一的代表作《横道世之介》曾在2013年被导演冲田修一改编为同名电影，感动了万千观众。遗憾的是，这部原著小说在国内始终没有较好的译本。一直等到现在，世纪文景终于再版了它。也许你已经看过那部电影，但仍想真诚推荐给你读这部小说。如果你还在世之介十八九岁的年纪，刚刚进入大学，这部小说或许还能帮你指清一些生活交友上的方向。');
INSERT INTO `book_movie_music` VALUES ('3', '0', 'movie', '/book_movie_music/movie/movie_1.jpg', '横道世之介', ' 冲田修一/160分钟/2013-02-23', '/book_movie_music/movie/movie_1_1.jpg&/book_movie_music/movie/movie_1_2.jpg', '给不少人推荐过这部电影，也定下心中最佳，就像一个有主见的人一定要有最喜欢的东西。说起来就是乐观豁达的横道世之介从乡里来到东京上学，结识了一些人的故事，当时我看的时候以为导演的手法很好，时空穿差更加突出了周围人对世之介的印象，后来看书，才发现原文结构就是这样。或许先入为主的影响，电影让我觉得比小说描绘得更精彩，更可能的是我贪图女主角的可爱。”遇见他，让我觉得我的人生更加美好”，这是我最印象深刻的台词，也是听过最好的夸奖。电影里没有悲伤气息，就像世之介问他初恋女友当他死去周边的人会如何回忆他，”会笑起来吧”，真是憧憬的人生。');
INSERT INTO `book_movie_music` VALUES ('4', '1', 'movie', '/book_movie_music/movie/movie_2.jpg', '情书', '岩井俊二/117分钟/1995-03-25', '/book_movie_music/movie/movie_2_1.jpg&/book_movie_music/movie/movie_2_2.jpg', '虽然我不读诗，音乐也欣赏不来，但我觉得在这部电影里感受到了二者的美。是一个暗恋的故事，如同学生时代未曾学会表达爱意的我们一样，男孩只会去捉弄女孩，也或者保持缄默。当然，戏剧冲突让女主在多年后看到了男孩的心意，书签后笔绘的女主肖像，一段充满遗憾的错过。在每个人成长到努力去爱的年纪之前，大多有一场无疾而终的暗恋，小心翼翼的守护，想要触碰却又收回，想对时光里的自己说一句，“抱歉，现在遇到她。”');
INSERT INTO `book_movie_music` VALUES ('5', '1', 'music', '/book_movie_music/music/1.jpg', '龙卷风', '周杰伦/Jay/2000-11-13 ', '/book_movie_music/music/1.mp3&/book_movie_music/music/1.lrc', 'wu~爱情来的太快&\r\n就像龙卷风&\r\n离不开暴风圈来不及逃&\r\n我不能再想&\r\n我不我不我不能&\r\n爱情走的太快&\r\n就像龙卷风&\r\n不能承受&\r\n我已无处可躲&\r\n我不要再想&\r\n我不我不&\r\n我不要再想你');
INSERT INTO `book_movie_music` VALUES ('6', '2', 'music', '/book_movie_music/music/2.jpg', '同桌的你', '老狼/恋恋风尘/1995', '/book_movie_music/music/2.mp3&/book_movie_music/music/2.lrc', '明天你是否会想起&\r\n昨天你写的日记&\r\n明天你是否还惦记&\r\n曾经最爱哭的你&\r\n老师们都已想不起&\r\n猜不出问题的你&\r\n我也是偶然翻相片&\r\n才想起同桌的你&\r\n谁娶了多愁善感的你&\r\n谁看了你的日记&\r\n谁把你的长发盘起&\r\n谁给你做的嫁衣&');
INSERT INTO `book_movie_music` VALUES ('7', '3', 'music', '/book_movie_music/music/3.jpg', 'Don\'t Break My Heart', '黑豹/黑豹1/1991', '/book_movie_music/music/3.mp3&/book_movie_music/music/3.lrc', 'Don\'t break my heart&\r\n\r\n再次温柔&\r\n\r\n不愿看到你那保持的沉默&\r\n\r\n独自等待&\r\n\r\n默默承受&\r\n\r\n喜悦总是出现在我梦中&\r\n\r\n你所拥有的是你的身体&\r\n\r\n诱人的美丽&\r\n\r\n我所拥有的是我的记忆&\r\n\r\n美妙的感觉 My Baby');
INSERT INTO `book_movie_music` VALUES ('8', '4', 'music', '/book_movie_music/music/4.jpg', '陀螺', '万晓利/这一切没有想象的那么糟/2006', '/book_movie_music/music/4.mp3&/book_movie_music/music/4.lrc', '在阳光灿烂的一天&\r\n你用手捂着你的脸&\r\n对我说你很疲倦&\r\n你扔下手中的道具&\r\n开始咒骂这场游戏&\r\n说你一直想放弃&\r\n但不能停止转&\r\n转转转转');
INSERT INTO `book_movie_music` VALUES ('9', '5', 'music', '/book_movie_music/music/5.jpg', 'Fix you', 'Coldplay/X&Y/2005', '/book_movie_music/music/5.mp3&/book_movie_music/music/5.lrc', 'When you try your best but you don\'t succeed&\r\nWhen you get what you want but not what you need&\r\nWhen you feel so tired but you can\'t sleep&\r\nStuck in reverse&\r\nAnd the tears come streaming down your face&\r\nWhen you lose something you can\'t replace&\r\nWhen you love someone but it goes to waste&\r\nCould it be worse?&\r\nLights will guide you home&\r\nAnd ignite your bones&\r\nAnd I will try to fix you');
INSERT INTO `book_movie_music` VALUES ('10', '6', 'music', '/book_movie_music/music/6.jpg', '七里香', '周杰伦/七里香/2004', '/book_movie_music/music/6.mp3&/book_movie_music/music/6.lrc', '雨下整夜&\r\n我的爱溢出就象雨水&\r\n院子落叶&\r\n跟我的思念厚厚一叠&\r\n几句是非&\r\n也无法将我的热情冷却&\r\n你出现在我诗的每一页&\r\n雨下整夜&\r\n我的爱溢出就象雨水&\r\n窗台蝴蝶&\r\n象诗里纷飞的美丽章节&\r\n我接着写&\r\n把永远爱你写进诗的结尾&\r\n你是我唯一想要的了解');
INSERT INTO `book_movie_music` VALUES ('11', '7', 'music', '/book_movie_music/music/7.jpg', '星空', '五月天/第二人生/2011', '/book_movie_music/music/7.mp3&/book_movie_music/music/7.lrc', '猎户 天狼 织女 光年外沉默&\r\n回忆 青春 梦想 何时偷偷陨落&\r\n我爱过 然后我沉默 人海里漂流&\r\n那一年我们望着星空 未来的未来从没想过&\r\n当故事失去美梦 美梦失去线索 而我们失去联络&\r\n这一片无言无语星空 为什么静静看我泪流&\r\n如果你在的时候 会不会伸手 拥抱我\r\n');
INSERT INTO `book_movie_music` VALUES ('12', '8', 'music', '/book_movie_music/music/8.jpg', '重来', '逃跑计划/时代之梦/2016', '/book_movie_music/music/8.mp3&/book_movie_music/music/8.lrc', '停留 我就在你身后&\r\n停留 等下一道彩虹&\r\n重来&\r\n像每一次跨越了深深的无奈&\r\n重来&\r\n像每一次看穿了人性的黑白&\r\n停留&\r\n我就在你身后&\r\n停留&\r\n等下一道彩虹&\r\n停留&\r\n我就在你身后&\r\n停留&\r\n等下一道彩虹');
INSERT INTO `book_movie_music` VALUES ('13', '9', 'music', '/book_movie_music/music/9.jpg', '但愿人长久', '王菲/菲靡靡之音/1995', '/book_movie_music/music/9.mp3&/book_movie_music/music/9.lrc', '明月几时有 把酒问青天&\r\n不知天上宫阙 今夕是何年&\r\n我欲乘风归去 唯恐琼楼玉宇&\r\n高处不胜寒 起舞弄清影 何似在人间&\r\n转朱阁 低绮户 照无眠&\r\n不应有恨 何事长向别时圆&\r\n人有悲欢离合 月有阴晴圆缺&\r\n此事古难全 但愿人长久 千里共婵娟&\r\n我欲乘风归去 唯恐琼楼玉宇&\r\n高处不胜寒 起舞弄清影 何似在人间&\r\n转朱阁 低绮户 照无眠&\r\n不应有恨 何事长向别时圆（月时圆）&\r\n人有悲欢离合 月有阴晴圆缺&\r\n此事古难全 但愿人长久 千里共婵娟');
INSERT INTO `book_movie_music` VALUES ('14', '10', 'music', '/book_movie_music/music/10.jpg', 'What\'s Up?', '4 Non Blondes/What\'s Up?/1993', '/book_movie_music/music/10.mp3&/book_movie_music/music/10.lrc', 'Twenty-five years and my life is still&\r\n\r\nTrying to get up that great big hill of hope&\r\n\r\nFor a destination&\r\n\r\nI realized quickly when I knew I should&\r\n\r\nThat the world was made up of this brotherhood of man&\r\n\r\nFor whatever that means&\r\n\r\nAnd so I cry sometimes&\r\n\r\nWhen I\'m lying in bed&\r\n\r\nJust to get it all out&\r\n\r\nWhat\'s in my head&\r\n\r\nAnd I, I am feeling a little peculiar&\r\n\r\nAnd so I wake in the morning&\r\n\r\nAnd I step outside&\r\n\r\nAnd I take a deep breath and I get real high&\r\n\r\nAnd I scream from the top of my lungs&\r\n\r\nWhat\'s going on?&\r\n\r\nAnd I say, hey hey hey hey&\r\n\r\nI said hey, what\'s going on?\r\n\r\n');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `item_id` int(1) NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'whimsy', '张飞', '2019-09-26', '哈哈哈');
INSERT INTO `comment` VALUES ('2', '1', 'message', '关羽', '2019-09-27', '我是一只鱼');
INSERT INTO `comment` VALUES ('3', '1', 'whimsy', '刘备', '2019-09-29', '我来了我来了');
INSERT INTO `comment` VALUES ('4', '1', 'message', '卤粉', '2019-09-26', '一块五');
INSERT INTO `comment` VALUES ('5', '1', 'message', '香干', '2019-09-27', '五毛一片');
INSERT INTO `comment` VALUES ('8', '1', 'message', '腊肠', '2019-09-29', '一块一根');
INSERT INTO `comment` VALUES ('9', '2', 'message', 'test', '2019-10-17', '123');
INSERT INTO `comment` VALUES ('10', '3', 'message', 'test', '2019-10-17', '456');
INSERT INTO `comment` VALUES ('11', '4', 'message', 'test', '2019-10-17', '789');
INSERT INTO `comment` VALUES ('12', '5', 'message', 'test', '2019-10-17', '789');
INSERT INTO `comment` VALUES ('13', '6', 'message', 'test', '2019-10-17', '测试');
INSERT INTO `comment` VALUES ('14', '1', 'whimsy', 'test', '2019-10-17', '123');
INSERT INTO `comment` VALUES ('15', '2', 'article', 'test', '2019-10-17', '456');
INSERT INTO `comment` VALUES ('16', '1', 'article', 'test', '2019-10-17', '789');
INSERT INTO `comment` VALUES ('17', '1', 'whimsy', 'test', '2019-10-17', '1010');
INSERT INTO `comment` VALUES ('18', '2', 'article', 'test', '2019-10-17', '测试文章');
INSERT INTO `comment` VALUES ('19', '1', 'article', 'test', '2019-10-18', '123');
INSERT INTO `comment` VALUES ('20', '2', 'whimsy', 'test', '2019-10-18', '222');
INSERT INTO `comment` VALUES ('21', '2', 'article', 'test', '2019-11-04', '1104');
INSERT INTO `comment` VALUES ('22', '2', 'whimsy', 'test', '2019-11-04', '1104');
INSERT INTO `comment` VALUES ('23', '3', 'whimsy', 'test', '2019-11-04', '测试没有');
INSERT INTO `comment` VALUES ('24', '7', 'message', 'test', '2019-11-04', '1104');
INSERT INTO `comment` VALUES ('29', '1', 'whimsy', '一位不愿透露名字的网友', '2019-11-04', '1104001');
INSERT INTO `comment` VALUES ('30', '8', 'message', 'su', '2019-11-04', 'su');
INSERT INTO `comment` VALUES ('31', '9', 'message', 'su', '2019-11-04', '留言');
INSERT INTO `comment` VALUES ('32', '10', 'message', 'su', '2019-11-07', '11.7测试留言');

-- ----------------------------
-- Table structure for user_img
-- ----------------------------
DROP TABLE IF EXISTS `user_img`;
CREATE TABLE `user_img` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_img
-- ----------------------------
INSERT INTO `user_img` VALUES ('1', '/person/admin.jpg', 'admin');
INSERT INTO `user_img` VALUES ('2', '/person/4569a8c3a5bf923209fb3c4932218f45.jpg', 'su');

-- ----------------------------
-- Table structure for whimsy
-- ----------------------------
DROP TABLE IF EXISTS `whimsy`;
CREATE TABLE `whimsy` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `img_src` varchar(300) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of whimsy
-- ----------------------------
INSERT INTO `whimsy` VALUES ('1', '2019-09-26', '/whimsy/1.jpg&/whimsy/2.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('2', '2019-09-27', '/whimsy/3.jpg&/whimsy/4.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('3', '2019-09-28', '/whimsy/5.jpg&/whimsy/6.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('4', '2019-09-29', '/whimsy/7.jpg&/whimsy/8.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('5', '2019-09-30', '/whimsy/9.jpg&/whimsy/10.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
INSERT INTO `whimsy` VALUES ('6', '2019-10-01', '/whimsy/11.jpg&/whimsy/12.jpg', '天上一只鹅，地上一只鹅，天上那只肥鹅鹅爱上地上那只瘦鹅鹅，鹅飞鹅打鹅碰鹅。');
