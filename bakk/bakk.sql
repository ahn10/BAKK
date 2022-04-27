-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 04:54 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(10, 'Hello', 'ad@gamil.com', '$2y$10$Jf2fAcvYmp7ugknAYBn8zOnxqRThvjRDY3c3H43P.YRuGwNp.l3T6', '1234', NULL, NULL, NULL, 2, 1, NULL, '2022-02-18 04:23:43', NULL),
(13, 'Admin', 'admin@bakk.com', '$2y$10$4UBleCL96esTQP2y0Y8ySOZuTBK7jMKQmWAoKF/NnxKydWK6MLm1.', '253123456', NULL, 'Admin', NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(8, 'Intel Arc Test Suggests It May Struggle To Beat Nvidia RTX 3070', 'intel-arc-test-suggests-it-may-struggle-to-beat-nvidia-rtx-3070', 1, 1, 4, 0, NULL, '2022-02-20__intel.jpg', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/intelarc.jpg\" style=\"height:370px; width:740px\" /></p>\r\n\r\n<p>There&#39;s a lot of uncertainty with the graphics card market, and since the latter parts of 2020, there doesn&#39;t seem to be an end in sight. While it seems that&nbsp;<a href=\"https://gamerant.com/nvidia-amd-prices-decrease/\">Nvidia and AMD prices are starting to come back down</a>, the shortages are still raging on. Alongside this,&nbsp;<strong>Intel</strong>&nbsp;has been looking to release its own range of GPU products, and while no one really knows how it will stack up alongside the competition, there&#39;s a chance it could beat out of some of the market&#39;s top-end cards. Or perhaps not.</p>\r\n\r\n<p>According to a recent report from Tom&#39;s Hardware, which cites a test from&nbsp;<a href=\"http://geekbench.com/\" rel=\"nofollow\">Geekbench.com</a>, the upcoming&nbsp;<a href=\"https://gamerant.com/tag/intel/\">Intel</a>&nbsp;Arc may not be quite as powerful as the Nvidia RTX 3070, which suggests the opposing narrative to what was being bandied around for a while now. While this is just one test, it does appear to be the most recent, and the results suggest that it might not be able to best one of the top-end products from &quot;team green.&quot; It&#39;s possible that the Arc could be as much as &quot;40%&quot; slower than the 3070, and that an OpenCL score of 85,448 indicates it might not be the best choice for gaming.</p>\r\n\r\n<p>However, it&#39;s important to say at this stage that this is just one test, and that the graphics card is still sometime away from being released. Nevertheless, given that the&nbsp;<a href=\"https://gamerant.com/intel-arc-gpu-higher-benchmark-nvidia-rtx-3070-ti/\">Intel Arc was touted as an RTX 3070 contender</a>, at least according to a benchmark test from last month, it would be disappointing if it turned out to not be the case. Given what&#39;s been seen recently, it seems that Intel&#39;s card could still offer up something special, but it&#39;s hard to say until it actually gets released.</p>\r\n\r\n<p>With delays a-plenty for big wigs in the industry,&nbsp;<a href=\"https://gamerant.com/intel-arc-gpus-release-windows/\">Intel finally announced a release window</a>&nbsp;recently, which should see the desktop variant of its Arc GPU coming out in Q2 of this year, and then workstation products coming in Q3. While the company didn&#39;t officially say it was delaying its products, this is a bit of a discrepancy when compared to its original launch date of Q1.</p>\r\n\r\n<p>On top of that,&nbsp;<strong>Intel</strong>&nbsp;has said it wants to&nbsp;<a href=\"https://gamerant.com/intel-release-millions-arc-gpus-combat-shortages/\">release &quot;millions&quot; of Arc GPUs</a>&nbsp;in an effort to combat the ongoing shortages. As it stands, the only real way to know whether it will give the RTX 3070 a run for its money is when it actually comes out. As for now, many may just be grateful that it has an official launch window.</p>', '2022-02-20 18:19:33', 1, 1, '2022-02-21 06:32:26'),
(11, 'Pokemon Legends: Arceus - How Long to Beat?', 'pokemon-legends-arceus-how-long-to-beat', 1, 1, 4, 0, NULL, '2022-02-20__pokemon-legends.jpg', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/pokemon_legends_arceus_promo-art.jpg\" style=\"height:370px; width:740px\" /></p>\r\n\r\n<p>Despite its huge open world, Pokemon Legends: Arceus is one of the series&#39; shortest games to date. Here&#39;s how long it takes to beat.</p>\r\n\r\n<p>Due to each mainline installment having typically followed&nbsp;<a href=\"https://gamerant.com/classic-pokemon-tropes-cut-removed-changes/\">the same tired formula</a>, most series fans usually have a pretty good idea of what to expect from a new&nbsp;<em>Pokemon</em>&nbsp;game even before they&#39;ve actually played it.&nbsp;<strong><em>Pokemon Legends: Arceus</em></strong>&nbsp;changes things up quite dramatically, however, which, in turn, has led to plenty of excitement and speculation in the build-up to the game&#39;s highly anticipated release.</p>\r\n\r\n<p>One of the biggest questions that a lot of fans have about&nbsp;<a href=\"http://gamerant.com/tag/pokemon-legends-arceus/\"><em>Pokemon Legends: Arceus</em></a>&nbsp;concerns the length of the game&#39;s main story. The narratives found in previous&nbsp;<em>Pokemon</em>&nbsp;games usually clock in at around the 25-hour mark, but, with the rather drastic switch to open-world gameplay, some fans expected a much longer playtime this time around. As it happens though, those people were mistaken.</p>\r\n\r\n<h2>How Long Does it Take to Beat Pokemon Legends: Arceus?</h2>\r\n\r\n<p><strong>A main story run of&nbsp;<em>Pokemon Legends: Arceus</em>&nbsp;will take most players somewhere between 20 and 25 hours</strong>. This variance is because a lot of the side content in the game blends into the main story pretty organically, meaning that players will at times need to go out of their way in order to avoid it. There&#39;s also a bit of a learning curve involved, with some players picking&nbsp;<a href=\"https://gamerant.com/pokemon-legends-arceus-new-gameplay-overview-trailer/\">the new mechanics</a>&nbsp;up a lot sooner than others.</p>\r\n\r\n<p><a href=\"https://gamerant.com/pokemon-pokedex-completion-rewards-game/\">As with previous&nbsp;<em>Pokemon</em>&nbsp;games</a>,&nbsp;<em>Pokemon Legends: Arceus</em>&nbsp;boasts plenty of side content and secrets for collectors and completionists to sink their teeth into once they&#39;ve completed the main story. So much so, in fact, that&nbsp;<strong>players hoping to see and do everything that the game has to offer can expect to invest well over 60 hours into a single playthrough</strong>, making it one of the longest and most content-rich&nbsp;<em>Pokemon</em>&nbsp;games released to date.</p>\r\n\r\n<p>Whether or not this total will be extended through DLC remains to be seen, though&nbsp;<a href=\"https://gamerant.com/pokemon-legends-arceus-dlc-expansion-potential/\">early signs do seem to point to&nbsp;<em>Legends: Arceus</em>&nbsp;getting some form of downloadable content in the not too distant future</a>. This may well end up being something as simple as cosmetic items or special event Pokemon, but a more well-fleshed-out experience akin to the&nbsp;<em>Sword</em>&nbsp;&amp;&nbsp;<em>Shield</em>&nbsp;expansions can&#39;t be ruled out either. Whatever the case, history suggests that, like the game itself, any DLC released for it will probably end up selling remarkably well.</p>\r\n\r\n<p><strong><em>Pokemon Legends: Arceus&nbsp;</em></strong>is available now for the Nintendo Switch.</p>', '2022-02-20 18:30:06', 1, 1, '2022-02-21 06:32:34'),
(12, 'Microsoft Started Activision Acquisition Talks Three Days After Bombshell Harassment Report', 'microsoft-started-activision-acquisition-talks-three-days-after-bombshell-harassment-report', 1, 1, 5, 0, NULL, '2022-02-20__arrticle1.jpg', '<p>On November 16, 2021, a report was published that claimed Activision CEO Bobby Kotick was well aware of harassment happening within his company. It also alleged that he himself mistreated women, both inside and outside work. Now, new docs reveal that three days later, Xbox head Phil Spencer called Kotick and began talks that ultimately led to the&nbsp;<a href=\"https://kotaku.com/report-microsoft-closing-in-on-70-billion-deal-to-buy-1848375008\">massive $68 billion acquisition.</a></p>\r\n\r\n<p><a href=\"https://www.cnbc.com/2022/02/18/microsofts-activision-talks-started-after-reporting-on-sex-misconduct.html\" rel=\"noopener noreferrer\" target=\"_blank\">As spotted by&nbsp;<em>CNBC</em></a>, these new details about the Activision/Microsoft deal come from an&nbsp;<a href=\"https://www.sec.gov/Archives/edgar/data/718877/000110465922025210/tm225196-3_prem14a.htm\" rel=\"noopener noreferrer\" target=\"_blank\">SEC regulatory filing released on Friday</a>. In it, we get a complete and highly detailed timeline of how and when the talks between Microsoft and Activision began.</p>\r\n\r\n<p>As mentioned already,&nbsp;<a href=\"https://www.wsj.com/articles/activision-videogames-bobby-kotick-sexual-misconduct-allegations-11637075680\" rel=\"noopener noreferrer\" target=\"_blank\">on November 16 a bombshell&nbsp;<em>Wall Street Journal&nbsp;</em>report</a>&nbsp;was published that alleged Kotick knew about sexual harassment claims at the company and that he was himself accused of mistreating employees.&nbsp;<a href=\"https://kotaku.com/report-activisions-bobby-kotick-didnt-just-know-he-al-1848066600\">Following that report, Activision&rsquo;s share price dropped nearly $10</a>. On November 18, Spencer emailed staff at Microsoft and Xbox that he was &ldquo;<a href=\"https://kotaku.com/xbox-boss-disturbed-by-whats-going-on-at-activision-bli-1848085302\">disturbed and deeply troubled</a>&rdquo; by the report and the stories coming out of Activision Blizzard. He also claimed to be reconsidering Xbox and Activision&rsquo;s relationship.</p>\r\n\r\n<p>On November 19, the very next day, Spencer called Kotick and according to the&nbsp;<a href=\"https://www.sec.gov/Archives/edgar/data/718877/000110465922025210/tm225196-3_prem14a.htm\" rel=\"noopener noreferrer\" target=\"_blank\">SEC filing</a>, during a conversation about something else, Spencer told the CEO that &ldquo;Microsoft was interested in discussing strategic opportunities&rdquo; between the two companies. He then asked if it would be possible for Kotick and himself to talk to&nbsp;<a href=\"https://kotaku.com/head-of-microsoft-says-he-s-grateful-for-activision-b-1848375217\">Microsoft CEO Satya Nadella the following day</a>.</p>\r\n\r\n<p>On November 20, Nadella made it clear: Microsoft wanted to buy up Activision.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/arrticle1a.jpg\" style=\"height:543px; width:965px\" /></p>\r\n\r\n<p>Less than 8 weeks later, following shockingly fast negotiations between the two companies, Microsoft and Activision announced the acquisition on January 18, 2022. It&rsquo;s wild how quickly this historic, mega-deal came together when compared to the comparatively much smaller $3.6 billion Bungie/Sony deal that was announced January 31.&nbsp;<a href=\"https://www.gamesindustry.biz/articles/2022-01-31-playstation-bungie-will-considerably-accelerate-our-journey-with-multiplatform-live-service-games\" rel=\"noopener noreferrer\" target=\"_blank\">That took &ldquo;months&rdquo; to figure out, according to Bungie and Sony</a>.</p>\r\n\r\n<p>The reason for the speed is likely down to the feeding frenzy that began in November. Revealed in the SEC filing is news that at least four other companies were interested in also buying Activision. All of the companies are unnamed in the document, but apparently, one company wanted to just buy Blizzard. However, the Activision board believed this would be too tricky to pull off. It seems Microsoft had to act fast and aggressively in its negotiations as a result of the other offers and companies.</p>\r\n\r\n<p><em>Kotaku&nbsp;</em>reached out to Activision and Microsoft about the timeline and details revealed in the SEC filing.</p>\r\n\r\n<p>The filing also shows that, whatever happens, Kotick will leave with a lot of money. If he leaves,&nbsp;<a href=\"https://www.wsj.com/articles/microsoft-to-buy-activision-blizzard-games-11642512435\" rel=\"noopener noreferrer\" target=\"_blank\">which is reportedly what will happen shortly after the deal is finalized</a>, he can sell all his shares of Activision and walk away with $410,142,075 based on the $95 per share price that Microsoft plans to pay. And if he decides to stay, but Microsoft pushes him out anyway, Kotick still ends up with $14,592,302.&nbsp;<a href=\"https://kotaku.com/bobby-kotick-has-always-been-a-slimy-asshole-1848117723\">Rich slimebags don&rsquo;t even get fired like normal people</a>.</p>\r\n\r\n<p>This new, detailed timeline is eye-opening and seems to confirm reports that Microsoft did indeed swoop in following Activision&rsquo;s stock nose-diving after the WSJ<em>&nbsp;</em>report in November.&nbsp;<a href=\"https://kotaku.com/everything-that-has-happened-since-the-activision-blizz-1847401161\">It also seems that Phil Spencer and others at Xbox might have indeed been disturbed by reports coming out of Activision</a>, but not&nbsp;<em>too&nbsp;</em>disturbed or disgusted to still see an opportunity to buy up the company.</p>', '2022-02-21 06:28:38', 0, 0, '2022-02-21 06:28:45'),
(13, 'Remedy\'s New Shooter Is More Call Of Duty Than Control, But Not In A Good Way', 'remedys-new-shooter-is-more-call-of-duty-than-control-but-not-in-a-good-way', 1, 1, 4, 0, NULL, '2022-02-20__remedy.jpg', '<p>I really, really wanted to like Catalyst, the new campaign developed by&nbsp;<a href=\"https://kotaku.com/control-developers-doubled-their-profits-in-2020-withou-1846273371\">Remedy Entertainment</a>&nbsp;and released for free-to-play shooter<em>&nbsp;CrossfireX</em>&nbsp;earlier this month. Remedy, the developer behind great games like<em>&nbsp;</em><a href=\"https://kotaku.com/zack-zwiezens-top-10-games-of-2019-1840540510\"><em>Control</em></a><em>&nbsp;</em>and&nbsp;<a href=\"https://kotaku.com/alan-wake-is-getting-remastered-and-its-about-damn-tim-1847628250\"><em>Alan Wake</em></a>, is one of my favorite out there, and while I wasn&rsquo;t thrilled about them making a campaign for some knock-off&nbsp;<em>Counter-Strike</em>, I was intrigued by the idea. What would a military FPS look like if made by Remedy? Would I even be able to tell? Well, I have my answer. And while this feels like a Remedy game, it&rsquo;s still a mostly boring adventure.</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/CrossfireX\" rel=\"noopener noreferrer\" target=\"_blank\"><em>CrossfireX</em></a>&nbsp;is a newly released console-focused spin-off of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_most-played_video_games_by_player_count\" rel=\"noopener noreferrer\" target=\"_blank\">hugely popular&nbsp;<em>Crossfire</em></a>. Both are free-to-play shooters that take a great deal of inspiration from<em>&nbsp;Counter-Strike</em>&nbsp;and&nbsp;<em>Call of Duty</em>. When it was announced that Microsoft and&nbsp;<em>Crossfire&nbsp;</em>publisher and dev Smilegate would bring a new version of the shooter to Xbox, it was also revealed that it would have a campaign.&nbsp;<a href=\"https://kotaku.com/crossfirexs-campaign-doesnt-seem-like-a-remedy-game-yet-1844486510\">This part of the game would be developed by Remedy</a>&nbsp;and, unlike&nbsp;<em>CrossfireX</em>&nbsp;which uses Unreal Engine, is built using the studio&rsquo;s own Northlight Engine, the same tech that powered&nbsp;<em>Control</em>. This is a weird setup. I can&rsquo;t think of a recent game that included a campaign built in one engine by a dev inside&nbsp;<em>another&nbsp;</em>game created by a different studio in a separate engine.</p>\r\n\r\n<p>Beyond the technical oddities,&nbsp;<em>CrossfireX&rsquo;s</em>&nbsp;multiplayer sucks. I played a few matches and hated basically every minute of it. Even after the devs fixed some of the most annoying problems in the game, it is still a wonky and not-very-fun-to-play military shooter. In a world with stuff like<em>&nbsp;Fortnite, PUBG, Warzone, Rainbow Six Siege, Halo Infinite, CSGO</em>, and more, it seems unlikely that&nbsp;<em>CrossfireX</em>&nbsp;will find or maintain much of an audience.</p>\r\n\r\n<p>On the plus side, Remedy&rsquo;s first campaign for&nbsp;<em>Crossfire</em>,<em>&nbsp;</em><a href=\"https://www.xbox.com/en-us/games/store/crossfirex-operation-catalyst/9nqxq265qv52\" rel=\"noopener noreferrer\" target=\"_blank\">Catalyst</a>, is much better! It&rsquo;s still not great, but at least it feels good to move and shoot, which is very important in a shooter. (And something the online portion of&nbsp;<em>CrossfireX</em>&nbsp;fails at.)</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/remedy1.jpg\" style=\"height:543px; width:965px\" /></p>\r\n\r\n<p>The basic setup of Catalyst consists of a large private military company, Global Risk, that is at war with an equally big and also evil terrorist group known as Black List. At the start of the campaign, a small squad from Global Risk is sent into a fictional country to capture a high-ranking member of Black List. Things quickly go south, and your team leader is captured, leaving it up to this squad to find their comrade, save him and escape. But there&rsquo;s more going on than the team expected, including stories of a weird, paranormal artifact that might be able to help you see the future. Oh, and one of the squad members is losing their mind, seeing things, and reliving memories that don&rsquo;t seem like their own.</p>\r\n\r\n<p>This is what surprised me most about Catalyst. Yes, the action and overall look of it is very &ldquo;2012 military shooter,&rdquo; but the actual narrative and world reminded me more of&nbsp;<a href=\"https://kotaku.com/surprise-two-more-control-games-are-in-the-works-1847196296\"><em>Control</em></a><em>&nbsp;</em>than anything found in&nbsp;<em>Battlefield&nbsp;</em>or&nbsp;<em>Call of Duty</em>. The game never really takes full advantage of this world or the lore it establishes, but if you dig into recordings and messages scattered around the various levels, you can piece together something mysterious and odd going on. I just wish the game brought more of those details front and center rather than hide them in the collectibles menu.</p>\r\n\r\n<p>Catalyst also has a button that lets you slow down time &agrave; la&nbsp;<a href=\"https://maxpayne.fandom.com/wiki/Bullet_Time\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Max Payne</em>&rsquo;s Bullet Time feature.&nbsp;</a>However, when you shoot, it speeds back up for a moment. It&rsquo;s a cool idea that makes the mostly by-the-numbers combat encounters in the game more exciting. It also makes the game easier and, considering I only died once on the game&rsquo;s standard difficulty, almost felt like cheating. Still, it helped keep things exciting whenever the game slipped away from its Remedy roots into &ldquo;generic war shooter&rdquo; territory, which happens frequently throughout the short three-hour campaign.</p>\r\n\r\n<p>The basic setup of Catalyst consists of a large private military company, Global Risk, that is at war with an equally big and also evil terrorist group known as Black List. At the start of the campaign, a small squad from Global Risk is sent into a fictional country to capture a high-ranking member of Black List. Things quickly go south, and your team leader is captured, leaving it up to this squad to find their comrade, save him and escape. But there&rsquo;s more going on than the team expected, including stories of a weird, paranormal artifact that might be able to help you see the future. Oh, and one of the squad members is losing their mind, seeing things, and reliving memories that don&rsquo;t seem like their own.</p>\r\n\r\n<p>This is what surprised me most about Catalyst. Yes, the action and overall look of it is very &ldquo;2012 military shooter,&rdquo; but the actual narrative and world reminded me more of&nbsp;<a href=\"https://kotaku.com/surprise-two-more-control-games-are-in-the-works-1847196296\"><em>Control</em></a><em>&nbsp;</em>than anything found in&nbsp;<em>Battlefield&nbsp;</em>or&nbsp;<em>Call of Duty</em>. The game never really takes full advantage of this world or the lore it establishes, but if you dig into recordings and messages scattered around the various levels, you can piece together something mysterious and odd going on. I just wish the game brought more of those details front and center rather than hide them in the collectibles menu.</p>\r\n\r\n<p>Catalyst also has a button that lets you slow down time &agrave; la&nbsp;<a href=\"https://maxpayne.fandom.com/wiki/Bullet_Time\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Max Payne</em>&rsquo;s Bullet Time feature.&nbsp;</a>However, when you shoot, it speeds back up for a moment. It&rsquo;s a cool idea that makes the mostly by-the-numbers combat encounters in the game more exciting. It also makes the game easier and, considering I only died once on the game&rsquo;s standard difficulty, almost felt like cheating. Still, it helped keep things exciting whenever the game slipped away from its Remedy roots into &ldquo;generic war shooter&rdquo; territory, which happens frequently throughout the short three-hour campaign.</p>', '2022-02-21 06:49:54', 1, 1, '2022-02-21 07:00:26'),
(14, 'As Billions Fly, Ubisoft Analyst Just Wondering Why Nobody Wants To Buy It', 'as-billions-fly-ubisoft-analyst-just-wondering-why-nobody-wants-to-buy-it', 1, 1, 5, 0, NULL, '2022-02-20__ubisoft.jpg', '<p>With three massive game industry acquisitions this year already, everyone&rsquo;s wondering what will happen to the few big publishers and studios left. Chief among those question marks is Ubisoft, the&nbsp;<a href=\"https://kotaku.com/the-ubisoft-formula-seems-to-be-wearing-thin-1847819487\"><em>Assassin&rsquo;s Creed&nbsp;</em>maker</a>&nbsp;currently struggling to&nbsp;<a href=\"https://kotaku.com/first-it-was-an-assassins-creed-expansion-now-its-ubis-1847326742\">make new hits</a>. Amidst delays and&nbsp;<a href=\"https://kotaku.com/ubisoft-nft-crypto-scam-tom-clancy-ghost-recon-breakpoi-1848484228\">employee frustration</a>, analysts grilled the French publisher during an earnings call today over why it hasn&rsquo;t already been bought.</p>\r\n\r\n<p>Unsurprisingly, acquisitions were on everyone&rsquo;s mind following&nbsp;major&nbsp;deals to buy&nbsp;<a href=\"https://kotaku.com/gta-publisher-to-buy-farmville-maker-zynga-for-12-7-bi-1848331055\">Zynga</a>, Bungie, and&nbsp;<a href=\"https://kotaku.com/report-microsoft-closing-in-on-70-billion-deal-to-buy-1848375008\">Activision Blizzard</a>&nbsp;announced last month. Matthew Walker of Credit Suisse put a particularly pointed version of the question to CEO Yves Guillemot and CFO Fr&eacute;d&eacute;rick Duguet.</p>\r\n\r\n<p>&ldquo;In a consolidating industry I guess I&rsquo;m just wondering why you guys haven&rsquo;t had an offer given the embedded value in your IP,&rdquo; Walker asked. &ldquo;Is that because in order to be acquired you have to signal that you want to be acquired and that you haven&rsquo;t done that?&rdquo;</p>\r\n\r\n<p>Here was the response:</p>\r\n\r\n<p><strong>Duguet:</strong>&nbsp;We will not speculate on why people would not have made an offer. What is interesting&hellip;</p>\r\n\r\n<p><strong>Guillemot [Interrupting]:</strong>&nbsp;If any offer were made, actually&hellip;</p>\r\n\r\n<p><strong>Duguet:</strong>&nbsp;Absolutely, so I can&rsquo;t comment on that any further. What we can say is that as we mention we have high-value assets, we have the scale to remain independent and create very meaningful value in the future because we have scale in terms of [inaudible] workforce, as well as engineering, technology, IPs, and strongly engaged communities. That&rsquo;s why we are able to serve so many platforms today with such high-quality content and with good favorable terms for publishers like Ubisoft now of course we won&rsquo;t speculate anymore on any potential interest in buying Ubisoft.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/ubisoft1.jpg\" style=\"height:543px; width:965px\" /></p>\r\n\r\n<p>It&rsquo;s a confusing exchange. Duguet seems to confirm that Ubisoft hasn&rsquo;t currently received any offers, before being cut off by his boss who then opens the door back up to the possibility that companies have expressed interest in buying the publisher.</p>\r\n\r\n<p>&ldquo;We won&rsquo;t comment if there have been any offers,&rdquo; a spokesperson told&nbsp;<em>Kotaku</em>&nbsp;in an email. &ldquo;With any decision, it&rsquo;s always based in the interest of our stakeholders including employees, players, and shareholders. Ubisoft can remain independent. We have the talents, the industrial and the financial scale, and a large portfolio of powerful IPs. If there were an offer it would, of course, be reviewed by the Board of Directors and with keeping in the interest of all stakeholders.&rdquo;</p>\r\n\r\n<p>It&rsquo;s a very different response than Guillemot had just a few years ago when French media conglomerate Vivendi was attempting a hostile takeover of the family business he co-founded decades ago. During that multi-year saga, Guillemot&nbsp;<a href=\"https://kotaku.com/why-ubisoft-is-afraid-of-a-hostile-takeover-1761561366\">went on the offensive</a>&nbsp;to rally employee and public support, as well as outside investors, to try and stave off a move he argued would deal a huge blow to creativity in the video game industry. Guillemot ultimately&nbsp;<a href=\"https://kotaku.com/vivendis-attempt-at-a-hostile-takeover-of-ubisoft-is-ov-1823930613\">won that fight</a>&nbsp;in part thanks to a limited investment by Tencent.</p>\r\n\r\n<p>Guillemot seems much more open to the possibility of a buyout now, and&nbsp;<a href=\"https://staticctf.akamaized.net/8aefmxkxpxwl/4ZA5JuOKbheerHwUS1ugBQ/aa27c309863ce1b4ef7abbae6c631739/Ubisoft_FY22_Q3_sales_PR_English_vf.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">today&rsquo;s earnings report</a>&nbsp;almost reads like a sales pitch. Ubisoft had a lot to say about its &ldquo;powerful portfolio of assets&rdquo; and having the &ldquo;richest pipeline of games&rdquo; in the company&rsquo;s history, vague gestures toward the future in a document usually promoting last quarter&rsquo;s success.</p>\r\n\r\n<p>It&rsquo;s not clear who might potentially be interested in buying Ubisoft.&nbsp;<a href=\"https://kotaku.com/rainbow-six-extraction-review-ubisoft-quarantine-ps5-xb-1848401324\"><em>Rainbow Six Extraction</em></a>&nbsp;and eventually Ubisoft+ coming to Game Pass ignited speculation about Microsoft.&nbsp;<a href=\"https://kotaku.com/tencent-buys-up-back-4-blood-devs-turtle-rock-its-sixt-1848234602\">Tencent</a>, meanwhile, already has a 5% stake in the company with the&nbsp;<a href=\"https://www.lefigaro.fr/flash-eco/2018/03/27/97002-20180327FILWWW00175-tencent-limite-a-5-sa-part-dans-ubisoft.php\" rel=\"noopener noreferrer\" target=\"_blank\">option to increase it starting next month</a>. Whoever it might be could potentially get it at a bargain. Ubisoft&rsquo;s market cap is $6 billion and its stock is worth half of what it was a year ago. At the same time, Ubisoft is rough twice the size of Activision Blizzard in terms of body count with nearly 20,000 employees spread out across the globe.</p>\r\n\r\n<p>Whatever ends up happening, many of the actual workers would like to have a say in it. Following a&nbsp;<a href=\"https://kotaku.com/ubisofts-metoo-reckoning-two-months-later-1844717203\">widespread reckoning with workplace misconduct</a>&nbsp;that started in 2020,&nbsp;<a href=\"https://twitter.com/ABetterUbisoft/status/1493231494772502528\" rel=\"noopener noreferrer\" target=\"_blank\">the ABetterUbisoft group</a>&nbsp;of 1,000 current and former developers signed a letter asking for more transparency and accountability. They say Guillemot and others&nbsp;<a href=\"https://www.eurogamer.net/articles/2022-02-15-a-better-ubisoft-gives-update-on-work-environment-200-days-after-open-letter-demanded-change\" rel=\"noopener noreferrer\" target=\"_blank\">still refuse to engage with their demands</a>&nbsp;over 200 days later.</p>', '2022-02-21 06:54:23', 1, 1, '2022-02-21 07:00:28'),
(15, 'Lost Ark Sets New Concurrent Player Record On Steam, With Over 1.3 Million Online [Update]', 'lost-ark-sets-new-concurrent-player-record-on-steam-with-over-13-million-online-update', 1, 1, 5, 0, NULL, '2022-02-20__amazon.jpg', '<p><a href=\"https://store.steampowered.com/app/1599340/Lost_Ark/\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Lost Ark</em></a>&nbsp;has become one of the very few games on Steam to reach over 1 million concurrent players. Not only that, but the&nbsp;<em>Diablo</em>-like MMO has now surpassed&nbsp;<em>DOTA 2</em>&nbsp;to become one of the most played games in the entire history of Steam.</p>\r\n\r\n<p>Originally&nbsp;<em>Lost Ark</em>, a free-to-play ARPGMMO, was released in South Korea back in 2019 for PC. After finding huge success there,&nbsp;<em>Lost Ark</em>&nbsp;publisher Smilegate partnered with&nbsp;<a href=\"https://kotaku.com/bloomberg-report-reveals-major-dysfunction-at-amazon-ga-1846160018\">Amazon</a>&nbsp;to bring the hit game to the US and Europe. It launched in a paid early access period a few days ago, before its official free-to-play release. And even with a paywall in front, it was still able to rack up over 500,000 players in a few hours, becoming one of the most popular new games on Steam.</p>\r\n\r\n<p>Now,&nbsp;<a href=\"https://www.vg247.com/lost-ark-launch-delayed-15-minutes-before-servers-were-to-open\" rel=\"noopener noreferrer\" target=\"_blank\">after some shaky launch day issues and server problems</a>,&nbsp;<em>Lost Ark</em>&nbsp;is officially out for everyone for free. And it seems a&nbsp;<em>lot of people</em>&nbsp;are excited to jump in and play. Currently, as I&rsquo;m writing this,&nbsp;<a href=\"https://steamdb.info/app/1599340/graphs/\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Lost Ark</em>&nbsp;has reached</a>&nbsp;1,297,896 players, surpassing&nbsp;<em>DOTA 2&#39;</em>s highest concurrent player number on Steam of 1,295,114. That now makes it the third most played game in Steam history based on active concurrent players.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/amazon1.png\" style=\"height:196px; width:965px\" /></p>\r\n\r\n<p><em>Lost Ark</em>&nbsp;has now surpassed&nbsp;<em>CS:GO&rsquo;s</em>&nbsp;concurrent player record of 1,308,963 players. It now has the second-highest number of active players ever recorded n the platform.&nbsp;</p>\r\n\r\n<p><em>Original story follows:</em></p>\r\n\r\n<p>It now resides right behind&nbsp;<a href=\"https://steamdb.info/app/730/graphs/\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Counter-Strike Global Offensive&nbsp;</em>and its<em>&nbsp;</em>record of 1.3 million concurrent players</a>. It seems very possible that&nbsp;<em>Lost Ark</em>&nbsp;will end up passing by that number, too. Though it seems nearly impossible that it will be able to break the incredible concurrent player record set by&nbsp;<em>PUBG</em>&nbsp;back when it was the hottest game in the world.&nbsp;<a href=\"https://steamdb.info/app/578080/graphs/\" rel=\"noopener noreferrer\" target=\"_blank\">Its record still stands at just over 3.2 million players</a>. I doubt&nbsp;<em>Lost Ark&nbsp;</em>exceeds that, but only time will tell.</p>\r\n\r\n<p><a href=\"https://kotaku.com/lost-ark-review-amazon-steam-diablo-mmo-rpg-hands-on-1848518837\">If you want to know more about what&nbsp;<em>Lost Ark</em>&nbsp;is, you can read my recently published impressions of the game first 12 hours</a>. I came away impressed by how great its combat felt and how it merged common MMO features with ARPG-mechanics. The overall narrative is a bit boring, but you&rsquo;ll probably be listening to a podcast while you play this game anyway, so who cares about that.</p>', '2022-02-21 07:00:21', 1, 1, '2022-02-21 07:00:29'),
(16, 'Halo Infinite Finally Addresses Desync Lag, And You\'d Better Pull Up A Seat', 'halo-infinite-finally-addresses-desync-lag-and-youd-better-pull-up-a-seat', 0, 1, 4, 0, NULL, '2022-02-20__halo.jpg', '<p>If you&rsquo;ve played a competitive online shooter, it&rsquo;s happened to you. You shoot an enemy a bunch. You swear you saw your shots connect. But the next minute, it&rsquo;s you who&rsquo;s sitting through a respawn timer. To take it from hardcore players,&nbsp;<em>Halo Infinite</em>&nbsp;can seem particularly egregious about such matters of desync, and it&rsquo;s something its developer has now addressed&nbsp;<a href=\"https://www.halowaypoint.com/news/closer-look-halo-infinite-online-experience\" rel=\"noopener noreferrer\" target=\"_blank\">in a blog post</a>&nbsp;this afternoon.</p>\r\n\r\n<p>Since its launch in November,&nbsp;<em>Halo Infinite</em>&rsquo;s free-to-play multiplayer mode has struggled with reports of connectivity troubles, much like most first-person shooters that rely on a steady internet connection.&nbsp;<a href=\"https://kotaku.com/halo-infinite-updates-events-fans-negative-feedback-xbo-1848469138\">Players have lamented these desync issues</a>, which manifest in various forms:&nbsp;<a href=\"https://twitter.com/TheNadeGod/status/1488194866857361410\" rel=\"noopener noreferrer\" target=\"_blank\">rubber-banding</a>,&nbsp;<a href=\"https://www.reddit.com/r/halo/comments/skgvwj/proof_desync_is_the_games_fault_less_than_10_ping/\" rel=\"noopener noreferrer\" target=\"_blank\">missed shots</a>, bullets&nbsp;<a href=\"https://www.reddit.com/r/halo/comments/snehne/a_compilation_of_netcodebased_issues/\" rel=\"noopener noreferrer\" target=\"_blank\">arcing unnaturally</a>&nbsp;around corners,&nbsp;<a href=\"https://www.reddit.com/r/halo/comments/rhw736/halo_infinite_melee_is_still_inconsistent_and/\" rel=\"noopener noreferrer\" target=\"_blank\">melee attacks</a>&nbsp;seemingly clipping through targets. The sticking point isn&rsquo;t necessarily that connectivity woes are happening in the first place&mdash;again, this stuff is pretty common in modern gaming&mdash;but rather that&nbsp;<em>Halo Infinite</em>&rsquo;s developer, 343 Industries, has gone months without publicly offering a thorough explanation (and potential solution).</p>\r\n\r\n<p>Today&rsquo;s post is the first time 343 has publicly addressed&nbsp;<em>Halo Infinite</em>&rsquo;s desync in depth. Fair warning: It is&nbsp;<em>dense</em>, full of math and numbers and all sorts of highly technical terms. If that&rsquo;s your thing, hey,&nbsp;<a href=\"https://www.halowaypoint.com/news/closer-look-halo-infinite-online-experience\" rel=\"noopener noreferrer\" target=\"_blank\">go have yourself a field day</a>. But the more casual&nbsp;<em>Halo Infinite</em>&nbsp;players should be happy to know it details a handful of planned short-term and long-term fixes, alongside explanations for why all this is happening in the first place.</p>\r\n\r\n<p>&ldquo;In&nbsp;<em>Halo</em>, we choose to favor the shooter,&rdquo; 343 Industries lead sandbox engineer Richard Watson wrote. &ldquo;Practically, this means that whatever happened on the shooter&rsquo;s screen the server endeavors to honor. That means whenever a player sees themselves hitting a target, our system does its best to give them the hit on the server.&rdquo;</p>\r\n\r\n<p>Basically, if a player&rsquo;s ping rating isn&rsquo;t exactly fantastic, they can still get killed despite hiding behind cover, a phenomenon 343 detailed with a series of screenshots snapped on the Recharge map. You might be hiding behind the wall in the upper corridor ramparts, but if the person shooting you sees you in the open, then they get the kill. It&rsquo;s chalked up to a metric called round trip time, which is measured in part via milliseconds. No way the human eye can pick up on every detail at that speed. But you can still feel burned by the results, especially on the receiving end (and in viewing post-match play-by-plays in&nbsp;<em>Halo Infinite</em>&rsquo;s theater mode).</p>\r\n\r\n<p>As for melee attacks missing their mark, that&rsquo;s a bit more complicated.&nbsp;<em>Halo Infinite</em>&nbsp;has&nbsp;<a href=\"https://gamerant.com/halo-infinite-player-collision-multiplayer/\" rel=\"noopener noreferrer\" target=\"_blank\">long been plagued by a fan rumor</a>&nbsp;that there&rsquo;s no player collision&mdash;basically, the ability for players to&nbsp;touch each other in-game&mdash;in the multiplayer mode. In today&rsquo;s blog post, Watson stressed that that&rsquo;s absolutely not the case, and that player collision is supposed to be present between opponents in&nbsp;<em>Halo Infinite</em>. But sometimes, again a result of poor latency, the game&rsquo;s multiplayer servers register your successful melee attack but don&rsquo;t fully convey to you that your opponent has moved their position, which can look like you&rsquo;ve essentially just phase-punched through an enemy. Watson detailed in a series of screenshots that look like Super Bowl diagrams:</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/16/articles/halo1.jpg\" style=\"height:543px; width:965px\" /></p>\r\n\r\n<p>Watson further said that improvements to&nbsp;<em>Infinite</em>&rsquo;s latency problems should address such issues. And fixes are indeed already in the works.</p>\r\n\r\n<p>For starters, 343 Industries will now prioritize low pings in matchmaking. Watson didn&rsquo;t detail what was prioritized before, but the fix &ldquo;should help you match with local players, and therefore have a better connection, more often.&rdquo; You&rsquo;ll also start matching with folks from your own geographical region on a more regular basis, hopefully providing more stable server connections. Down the line,&nbsp;<em>Halo Infinite</em>&nbsp;will feature indicators on the mid-match scoreboard that&rsquo;ll tell you whether or not you&rsquo;re playing with someone who has poor connection. That&rsquo;s planned alongside a forthcoming indicator that&rsquo;ll let you know when your own connection is poor. And if these solutions don&rsquo;t mitigate connectivity issues across the board, 343 says it&rsquo;ll look into the option of adding a server selection feature to&nbsp;<em>Halo Infinite</em>.</p>\r\n\r\n<p>These updates are the latest to join a number of other positively-received changes recently introduced to&nbsp;<em>Halo Infinite</em>&nbsp;over the past month or two. The once-lambasted prices of the microtransaction store&nbsp;<a href=\"https://kotaku.com/halo-infinites-cosmetics-will-be-cheaper-starting-next-1848367493\">have been lowered</a>. The once-busted Big Team Battle mode&nbsp;<a href=\"https://kotaku.com/halo-infinite-big-team-battle-mode-fixed-xbox-pc-multip-1848477181\">has been fixed</a>. Those are in addition to the revolving door of&nbsp;<a href=\"https://kotaku.com/halo-infinite-s-samurai-event-is-back-and-it-s-actuall-1848302455\">entertaining</a>&nbsp;<a href=\"https://kotaku.com/halo-infinite-s-winter-event-unfortunately-demands-a-bi-1848254025\">modes</a>&nbsp;and&nbsp;<a href=\"https://kotaku.com/everything-you-need-to-know-about-halo-infinite-s-neon-1848378832\">events</a>. When season two rolls around, it&rsquo;ll add more content, including a cooperative campaign, which precipitates the player-creation Forge mode later in the year. Now, the only thing missing&mdash;I&rsquo;ve said it before, I&rsquo;ll say it again&mdash;is the return of King of the Hill.</p>', '2022-02-21 07:03:41', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ubisoft', 'ubisoft', 1, 1, '2022-02-19 05:38:53', NULL),
(2, '2022', '2018', 3, 1, '2022-02-19 05:45:34', '2022-02-19 07:31:48'),
(3, '2021', '2022', 3, 1, '2022-02-19 07:08:23', NULL),
(4, 'BANDAI NAMCO', 'bandai-namco', 1, 1, '2022-02-19 07:25:52', NULL),
(5, 'Electronic Arts', 'electronic-arts', 1, 1, '2022-02-19 07:28:50', NULL),
(6, 'Konami', 'konami', 1, 1, '2022-02-19 07:29:10', NULL),
(7, '2020', '2021', 3, 1, '2022-02-19 07:29:16', NULL),
(8, '2019', '2020', 3, 1, '2022-02-19 07:29:23', NULL),
(9, '2018', '2018', 3, 1, '2022-02-19 07:33:58', NULL),
(10, 'Rockstar Games', 'rockstar-games', 1, 1, '2022-02-19 07:34:20', NULL),
(11, 'Sony', 'sony', 1, 1, '2022-02-19 07:35:54', NULL),
(12, 'Activision', 'activision', 1, 1, '2022-02-20 05:25:18', NULL),
(13, 'Warner Bros.', 'warner-bros', 1, 1, '2022-02-20 05:34:11', NULL),
(14, 'SEGA', 'sega', 1, 1, '2022-02-20 05:37:00', NULL),
(15, 'Microsoft', 'microsoft', 1, 1, '2022-02-20 05:48:28', NULL),
(16, 'Nintendo', 'nintendo', 1, 1, '2022-02-20 06:05:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'PlayStation', 'playstation', '2022-02-18__playstation.png', NULL, NULL, 0, 0, 1, '2022-02-19 03:33:19', NULL),
(2, 'Xbox', 'xbox', '2022-02-18__xbox.png', NULL, NULL, 0, 0, 1, '2022-02-19 03:34:54', NULL),
(3, 'Nitendo Switch', 'nitendo-switch', '2022-02-18__nintendo.png', NULL, NULL, 0, 1, 1, '2022-02-19 03:37:02', '2022-02-20 07:37:00'),
(4, 'PC Games', 'pc-games', '2022-02-18__pc.jpg', NULL, NULL, 0, 0, 1, '2022-02-19 03:42:20', '2022-02-20 07:37:40'),
(5, 'PlayStation 4', 'playstation-4', NULL, NULL, NULL, 1, 0, 1, '2022-02-19 03:43:51', '2022-02-19 03:44:09'),
(6, 'PlayStation 5', 'playstation-5', NULL, NULL, NULL, 1, 0, 1, '2022-02-19 03:44:36', NULL),
(7, 'Xbox One', 'xbox-one', NULL, NULL, NULL, 2, 0, 1, '2022-02-19 04:46:54', NULL),
(8, 'Xbox Series X|S', 'xbox-series-xs', NULL, NULL, NULL, 2, 0, 1, '2022-02-19 04:48:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(13, NULL, NULL, 'I already know this game is gonna be epic. it\'s already got 5 stars from me.', 0, 5, 0, 16, 0, 0, '2022-02-20 18:04:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'Return', '123456789', 'abc@gmail.com', 'Hello. I want to return my item.', '2022-02-22 02:18:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Most Anticipated Console Games & DLCs of 2022', '2022-02-18__event1.png', 'https://consolegamestuff.com/most-anticipated-console-games-dlcs-of-2022/', 0, 1, 0, 0, '2022-02-19 06:56:20', '2022-02-19 06:56:20'),
(2, 'https://www.ign.com/articles/uk-daily-deals-huge-nintendo-switch-sale', '2022-02-18__event3.png', 'https://www.ign.com/articles/uk-daily-deals-huge-nintendo-switch-sale', 0, 0, 1, 0, '2022-02-19 07:05:28', '2022-02-19 07:05:28'),
(3, 'https://www.gamesforchange.org/festival/', '2022-02-18__event2.png', 'https://www.gamesforchange.org/festival/', 1, 0, 0, 0, '2022-02-19 06:59:44', '2022-02-19 06:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_order_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exports`
--

INSERT INTO `exports` (`id`, `w_order_id`, `w_price`, `w_qty`, `w_time_exports`, `created_at`, `updated_at`) VALUES
(1, 14, 1000000, 30, NULL, '2021-05-25 17:32:53', '2021-05-25 17:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(4, 'Articles', 'articles', NULL, NULL, NULL, 1, 1, '2022-02-16 07:06:58', '2022-02-20 18:20:45'),
(5, 'News', 'news', NULL, NULL, NULL, 1, 1, '2022-02-20 04:41:03', '2022-02-22 02:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 2),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 2),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 2),
(36, '2021_05_25_233939_create_kho_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(16, 15, 38, 15, 1, 697000, '2020-05-13 05:30:50', NULL),
(23, 21, 38, 15, 1, 26, '2022-02-10 21:54:18', NULL),
(24, 22, 28, 8, 1, 230000, '2022-02-10 21:57:41', NULL),
(25, 23, 28, 8, 1, 230000, '2022-02-10 21:57:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phuongnguyen70680@gmail.com', '$2y$10$4YLsBYTs1t.WW4q7u4oYKOQB4xAHGSVkIzdvTq.uQ1DM7tC6NJLM.', '2020-04-25 02:57:21'),
('phuongnguyen70680@gmail.com', '$2y$10$Kht/eKi4SAE8TGSlg9ZzjuXL3PRVOhg5DKs5u.Cy.ejbtA/F0OXIi', '2020-04-25 03:09:18'),
('phuongnguyen70680@gmail.com', '$2y$10$GRFriqGnlA6pgCH7Y59rTeX8VbSx0cOe93MaU/UNqSw2qRPSzhXmS', '2020-05-02 03:07:21'),
('phuongnguyen70680@gmail.com', '$2y$10$4OkOzMtbGv/bPah2VxIxxuW3IeSWwHxFrQ1dbpQ.j4xXLfQtT0O9G', '2020-05-02 03:07:50'),
('phuongnguyen70680@gmail.com', '$2y$10$UHxD4fVm884w4gx65gkHRuoYt5t0lbvfTpHw83UJdqFTf..mh769.', '2020-05-02 03:11:10'),
('phuongnguyen70680@gmail.com', '$2y$10$7bcSsst/vWUYl1A5dkdgqek6GeaVuXKXVKVBzaJEVa3jayfkbCtVK', '2020-05-03 01:59:48'),
('bthuan490@gmail.com', '$2y$10$FcoMADBhwsQxLTar/w9ZE.ReH7dVZKPmR8ua0J7RzoQlxqs6UOK8C', '2020-06-19 11:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(1, 'Assassin\'S Creed: Syndicate', 'assassins-creed-syndicate', 20, 0, 5, 3, 0, 0, '', '2022-02-18__assassin-ps4.jpeg', 4, 1, 1, 0, NULL, 'London, 1868. The Industrial Revolution unleashes an incredible age of invention, transforming the lives of millions with technologies once thought impossible. Opportunities created during this time period have people rushing to London to engage in this new world. A world no longer controlled by kings, emperors, politicians or religion, but by a new common denominator: money.', 0, 0, 0, '2022-02-19 06:43:50', 20, NULL, NULL, 0, '2022-02-20 07:30:45', NULL),
(2, 'Grand Theft Auto V: Premium Edition', 'grand-theft-auto-v-premium-edition', 50, 0, 5, 5, 0, 10, '', '2022-02-18__gta.jpeg', 4, 1, 1, 15, NULL, 'The Grand Theft Auto V: Premium Edition includes the complete Grand Theft Auto V story experience, free access to the ever evolving Grand Theft Auto Online and all existing gameplay upgrades and content including The Doomsday Heist, Gunrunning, Smuggler\'s Run, Bikers and much more. You\'ll also get the Criminal Enterprise Starter Pack, the fastest way to jumpstart your criminal empire in Grand Theft Auto Online. When a young street hustler, a retired bank robber and a terrifying psychopath land themselves in trouble, they must pull off a series of dangerous heists to survive in a city in which they can trust nobody, least of all each other.', 1, 5, 5, '2022-02-19 07:15:29', 5, NULL, NULL, 0, '2022-02-20 07:30:28', NULL),
(3, 'Call of Duty: Black Ops Cold War', 'call-of-duty-black-ops-cold-war', 60, 0, 5, 0, 0, 10, '', '2022-02-19__callofduty.jpeg', 4, 1, 1, 0, NULL, 'Black Ops Cold War will drop fans into the depths of the Cold War’s volatile geopolitical battle of the early 1980s. Nothing is ever as it seems in a gripping single-player Campaign, where players will come face-to-face with historical figures and hard truths, as they battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more.\r\n\r\nAs elite operatives, you will follow the trail of a shadowy figure named Perseus who is on a mission to destabilize the global balance of power and change the course of history. Descend into the dark center of this global conspiracy alongside iconic characters Woods, Mason and Hudson and a new cast of operatives attempting to stop a plot decades in the making.', 0, 0, 0, '2022-02-20 05:23:03', 50, NULL, NULL, 0, '2022-02-20 07:30:14', NULL),
(4, 'Spyro Reignited Trilogy', 'spyro-reignited-trilogy', 40, 0, 5, 0, 0, 10, '', '2022-02-19__spyro.jpeg', 0, 0, 1, 0, NULL, 'The original roast master is back Same sick burns, same smoldering attitude, now all scaled up in stunning HD. Spyro is bringing the heat like never before in the Spyro Reignited Trilogy game collection.', 0, 0, 0, '2022-02-20 05:26:30', 10, NULL, NULL, 0, '2022-02-20 07:29:57', NULL),
(5, 'Marvel’s Spider-Man: Miles Morales Ultimate Launch Edition', 'marvels-spider-man-miles-morales-ultimate-launch-edition', 70, 0, 6, 6, 0, 0, '', '2022-02-19__spiderman.png', 2, 0, 1, 16, NULL, 'In the latest adventure in the Marvel’s Spider-Man universe, teenager Miles Morales is adjusting to his new home while following in the footsteps of his mentor, Peter Parker, as a new Spider-Man. But when a fierce power struggle threatens to destroy his new home, the aspiring hero realizes that with great power, there must also come great responsibility. To save all of Marvel’s New York, Miles must take up the mantle of Spider-Man and own it.\r\n\r\nDiscover the complete web-slinging story with the Marvel’s Spider-Man: Miles Morales Ultimate Edition. This unmissable bundle includes Marvel’s Spider-Man Remastered – the complete award-winning game, including all three DLC chapters in the Marvel’s Spider-Man: The City That Never Sleeps adventure – remastered and enhanced for PS5™.', 1, 5, 5, '2022-02-20 05:28:42', 0, NULL, NULL, 0, '2022-02-20 18:04:35', NULL),
(6, 'Assassin\'s Creed: Valhalla', 'assassins-creed-valhalla', 60, 0, 6, 3, 0, 30, '', '2022-02-19__asassin-creed-valhalla.jpeg', 0, 0, 1, 0, NULL, 'Become Eivor, a legendary Viking raider on a quest for glory. Explore England\'s Dark Ages as you raid your enemies, grow your settlement, and build your political power.', 0, 0, 0, '2022-02-20 05:33:50', 25, NULL, NULL, 0, '2022-02-20 07:28:58', NULL),
(7, 'Mortal Kombat 11: Ultimate Edition', 'mortal-kombat-11-ultimate-edition', 99, 0, 6, 0, 0, 45, '', '2022-02-19__mortal-kombat.jpeg', 0, 1, 1, 0, NULL, 'Take control of Earthrealm’s protectors in the game’s TWO critically acclaimed, time-bending Story Campaigns as they race to stop Kronika from rewinding time and rebooting history. Friendships are tested, and new alliances forged, in the battle to save all of existence.', 0, 0, 0, '2022-02-20 05:35:47', 3, NULL, NULL, 0, '2022-02-20 07:28:45', NULL),
(8, 'Demon Slayer-Kimetsu no Yaiba: The Hinokami Chronicles', 'demon-slayer-kimetsu-no-yaiba-the-hinokami-chronicles', 60, 0, 6, 0, 0, 30, '', '2022-02-19__demon-slayer.jpeg', 0, 0, 1, 0, NULL, 'In Taishoera Japan, Tanjiro Kamado\'s peaceful life is shattered when he returns home to find his entire family slaughtered by a demon. The only survivor is Nezuko, his little sister who has herself been transformed into a demon. Devastated, Tanjiro sets out to walk the path of a “Demon Slayer” to reverse his sister’s transformation and destroy the demon who threatens all of humanity.', 0, 0, 0, '2022-02-20 05:38:01', 10, NULL, NULL, 0, '2022-02-20 07:28:25', NULL),
(9, 'Tony Hawk Pro Skater 1+2', 'tony-hawk-pro-skater-12', 50, 0, 6, 0, 0, 0, '', '2022-02-19__tony-hawk.jpeg', 1, 0, 1, 0, NULL, 'Take it to the next level on PS5™ and Xbox Series X,S with native 4K graphics*, spatial audio, enhanced atmospheric features, and more.\r\n\r\nDrop back in with the most iconic skateboarding games ever made. Play Tony Hawk’s™ Pro Skater™ & Tony Hawk’s™ Pro Skater™ 2 in one epic collection, rebuilt from the ground up in incredible HD. All the pro skaters, levels and tricks are back and fully-remastered, plus more.', 1, 3, 3, '2022-02-20 05:40:57', 30, NULL, NULL, 0, '2022-02-20 18:06:31', NULL),
(10, 'Jump Force, Bandai Namco', 'jump-force-bandai-namco', 60, 0, 7, 0, 0, 60, '', '2022-02-19__jump-force.jpeg', 2, 0, 1, 26, NULL, 'Jump Force for Xbox One A unique setting, merging the Jump World and the Real World.', 1, 4, 4, '2022-02-20 05:43:12', 0, NULL, NULL, 0, '2022-02-20 07:27:54', NULL),
(11, 'Crash N. Sane Trilogy', 'crash-n-sane-trilogy', 36, 0, 7, 0, 0, 5, '', '2022-02-19__crash-trilogy.jpeg', 0, 0, 1, 0, NULL, 'Crash Bandicoot\r\n\r\nDr. Neo Cortex has a plan to take over the world, and he wants to create genetically engineered animals to d his bidding. To create his minions, Cortex kidnaps as many animals as he can; Crash Bandicoot s girlfriend just happens to be one of his victims. Take control of Crash as he runs, jumps, and spins through 30 levels of intense action on three different Australian islands. Only you can help Crash save the animals, save his girlfriend, and foil Dr. Cortexs plot.\r\n\r\n \r\n\r\nCrash Bandicoot 2: Cortex Strikes Back\r\n\r\nThe evil Dr. Neo Cortex is back out this time to save the world And hes asking for help from his arch nemesis, Crash Bandicoot Is this just a conniving plan to lure Crash into Cortexs next dastardly experiment Can Crash win again or will he join Cortexs mindless zoo Bigger free-roaming 3-D environments, all-new animations and a whole host of colorful characters watch as our hero Crash, ice-skates, rodeo-rides a polar bear and jet-packs through zero-gravity in the continuing adventures of Crash Bandicoot 2: Cortex Strikes Back This time he aint joking\r\n\r\nCrash Bandicoot Warped\r\n\r\nOh yeah hes back AND hes ready Its a Whole New Time-Traveling Adventure All new-style gameplay action scuba dive, ride a motorcycle, a baby T-Rex, and go free-roaming airborne in a plane Play as Coco Gallop along the Great Wall of China on a tiger, go extreme on a jet-ski and other high-flying surprises Prove your skills with the new Super-charge Body Slam, Super Slide, Double Jump, Death-Tornado Spin and a Laser-Guided Bazooka. All new enemies include a new Big Boss, Uka Uka, N. Tropy, a menacing Dingodile and of course, the return of some favorites like N. Gin and Tiny. More Action. More Fun. More Puzzles and Secret Levels. And you didnt think it could get any better\r\n\r\n \r\n\r\nCrash Bandicoot N. Sane Trilogy Stormy Ascent Level\r\n\r\nExperience the notorious Stormy Ascent level from the original Crash Bandicoot game. Previously unfinished and unreleased, this level will challenge even the most hardcore of Crash fans Do you have what it takes to tackle the fast retracting steps, vial throwing lab assistants, flying birds, moving platforms and iron spikes \r\n\r\n \r\n\r\nCrash Bandicoot N. Sane Trilogy Future Tense Level\r\n\r\nPlay the first-ever NEW level built for the original trilogys gameplay in almost 20 years. Drawing inspiration from the cut Waterfall Level from the first Crash Bandicoot game, Future Tense features several puzzles from the original level set in the futuristic setting from Crash Bandicoot 3: Warped. Discover a whole new level of difficulty for Crash Bandicoot N. Sane Trilogy as you dodge rockets, destroy robots and leaps lasers while ascending a massive futuristic skyscraper.', 0, 0, 0, '2022-02-20 05:46:06', 0, NULL, NULL, 0, '2022-02-20 07:27:40', NULL),
(12, 'Destiny 2', 'destiny-2', 8, 0, 7, 0, 0, 0, '', '2022-02-19__destiny2.jpeg', 0, 0, 1, 0, NULL, 'From the makers of the acclaimed hit game Destiny, comes the much-anticipated sequel. An action shooter that takes you on an epic journey across the solar system.\r\n\r\nHumanity\'s last safe city has fallen to an overwhelming invasion force, led by Ghaul, the imposing commander of the brutal Red Legion. He has stripped the city\'s Guardians of their power, and forced the survivors to flee. You will venture to mysterious, unexplored worlds of our solar system to discover an arsenal of weapons and devastating new combat abilities. To defeat the Red Legion and confront Ghaul, you must reunite humanity\'s scattered heroes, stand together, and fight back to reclaim our home.', 0, 0, 0, '2022-02-20 05:47:33', 30, NULL, NULL, 0, '2022-02-20 07:27:23', NULL),
(13, 'Forza Horizon 4', 'forza-horizon-4', 70, 0, 7, 0, 0, 5, '', '2022-02-19__forza-horizon.jpeg', 0, 0, 1, 0, NULL, 'The Forza Horizon 4 Standard Edition includes:* Forza Horizon 4 game disc.\r\n\r\nHDR: HDR functionality available with Xbox One X and S consoles, and supported TVs.\r\n\r\n \r\n\r\nForza Horizon 4, Microsoft, Xbox One, 889842392357\r\n\r\nSEASONS CHANGE EVERYTHING. For the first time in the racing and driving genre, experience dynamic seasons in a shared open-world. Explore beautiful scenery, collect over 450 cars, and become a Horizon Superstar in historic Britain. (Some cars provided by online update.\r\nBritain Like You?ve Never Seen it. Discover lakes, valleys, castles, and breathtaking scenery all in spectacular native 4K and HDR on Xbox One X.\r\nMaster Driving in All Seasons. Explore a changing world through dry, wet, muddy, snowy, and icy conditions.\r\nNew Content Every Week. Every week, a new season change brings new themed content, gameplay, challenges, and rewards.\r\nGo it Alone or Team Up. Play solo or cooperatively. Join Team multiplayer for casual fun or Ranked Teams to take on the best in the world. Xbox Live Gold (sold separately) required for online multiplayer on Xbox consoles.', 0, 0, 0, '2022-02-20 05:50:04', 20, NULL, NULL, 0, '2022-02-20 07:26:56', NULL),
(14, 'Tom Clancy\'s Rainbow Six Extraction', 'tom-clancys-rainbow-six-extraction', 60, 0, 8, 0, 0, 10, '', '2022-02-19__tom-clancy.jpeg', 0, 0, 1, 0, NULL, 'Upgrade to the Xbox Series X|S version of the game at no additional cost.* *CONDITIONS AND RESTRICTIONS APPLY. This game leverages Smart Delivery allowing access to both the Xbox One title and the Xbox Series X|S title. To upgrade eligible physical disc copies, a console with a disc drive is required. Visit ubi.li/NextGenUpgrades for details.For decades, Team Rainbow has been the shield against the worst global threats imaginable. Now, we face the greatest terror yet: a lethal, mutating alien parasite.*Offer and dates subject to change. Restrictions apply, including availability, technical and content restrictions. Buddy Pass features may differ.', 0, 0, 0, '2022-02-20 05:53:25', 20, NULL, NULL, 0, '2022-02-20 07:26:25', NULL),
(15, 'Battlefield 2042: Steelbook Edition', 'battlefield-2042-steelbook-edition', 70, 0, 8, 0, 0, 50, '', '2022-02-19__battlefield.jpeg', 0, 0, 1, 0, NULL, 'EXCLUSIVE BONUS: Buy Battlefield 2042 at Walmart and receive a FREE exclusive Steelbook with the game. *While supplies last\r\nBattlefield™ 2042 is a first-person shooter that marks the return to the iconic all-out warfare of the franchise. In a near-future world transformed by disorder, adapt and overcome dynamically-changing battlegrounds with the help of your squad and a cutting-edge arsenal. With support for 128 players*, Battlefield™ 2042 brings unprecedented scale on vast environments across the globe. Players will take on several massive experiences, from updated multiplayer modes like Conquest and Breakthrough to the all-new Hazard Zone.', 0, 0, 0, '2022-02-20 05:55:14', 10, NULL, NULL, 0, '2022-02-20 07:26:11', NULL),
(16, 'FIFA 22', 'fifa-22', 70, 0, 8, 0, 0, 15, '', '2022-02-19__fifa22.jpeg', 4, 1, 1, 32, NULL, 'Powered by Football™, EA SPORTS™ FIFA 22 on PlayStation 5 and Xbox Series X,S moves the game forward with groundbreaking next-gen HyperMotion gameplay technology that elevates every moment on the pitch. HyperMotion integrates advanced full-team mocap data and machine learning to heighten gameplay in every match in FIFA 22, harnessing the power of next generation consoles to deliver the most realistic, responsive and fluid gameplay experience we’ve ever built. FIFA 22 brings a new season of innovation across every mode in the game; enjoy more consistency between the posts with a goalkeeper rewrite that brings more composure to the most important position on the pitch, live out your football dreams as you create and manage your custom club to glory in Career Mode, get rewarded for your flair with restyled gameplay in VOLTA FOOTBALL, welcome back football’s most memorable players as FIFA Ultimate Team™ Heroes, and feel the atmosphere of your next big game with the most immersive matchday experience ever seen in EA SPORTS FIFA', 1, 4, 4, '2022-02-20 05:59:07', 30, NULL, NULL, 0, '2022-02-20 07:25:55', NULL),
(17, 'Battlefield 2042: Standard Edition', 'battlefield-2042-standard-edition', 20, 0, 8, 0, 0, 0, '', '2022-02-19__battlefield.jpeg', 0, 0, 1, 0, NULL, 'Battlefield 2042: Standard Edition\r\n\r\n\r\nIn a near-future world transformed by disorder, adapt and overcome dynamically-changing battlegrounds with the help of your squad and a cutting-edge arsenal. With support for 128 players*, Battlefield 2042 brings unprecedented scale on vast environments across the globe. Take on several massive experiences, from updated multiplayer modes like Conquest and Breakthrough to the all-new Battlefield Hazard Zone and Battlefield Portal.\r\n*Supported on Xbox Series X,S only. Xbox One will be locked at 64 players.', 0, 0, 0, '2022-02-20 06:02:12', 10, NULL, NULL, 0, '2022-02-20 07:25:40', NULL),
(18, 'Marvel\'s Guardians of the Galaxy Digital: Deluxe', 'marvels-guardians-of-the-galaxy-digital-deluxe', 70, 0, 8, 0, 0, 0, '', '2022-02-19__marvel-xbox.png', 0, 0, 1, 0, NULL, 'Marvel\'s Guardians of the Galaxy Digital Deluxe.\r\nPre-order Marvel\'s Guardians of the Galaxy to obtain an early unlock of the Throwback Guardians Outfit Pack. It allows you to instantly receive one outfit for each of the Guardians, which are faithful interpretations of some of their most iconic looks from the Marvel comics. The outfits included in this pack are: - Team-Lord (Star-Lord) - Black Vortex (Gamora) - Thanos Imperative (Drax) - The Stinger (Rocket) - Impaler (Groot) Be Star-Lord, lead the Guardians, save the galaxy. You got this. Probably. The Digital Deluxe Edition includes: - Marvel\'s Guardians of the Galaxy - Sun-Lord Outfit for Star-Lord (Early Unlock) - City-Lord Outfit for Star-Lord (Early Unlock) - Marvel\'s Guardians of the Galaxy: The Hits - Original Video Game Soundtrack (Digital Download) - Marvel\'s Guardians of the Galaxy: The Art of the Game Digital Mini Artbook (Digital Download) Digital download bonus: - Social-Lord Outfit for Star-Lord (Early Unlock)', 0, 0, 0, '2022-02-20 06:03:52', 30, NULL, NULL, 0, '2022-02-20 07:25:14', NULL),
(19, 'Super Smash Bros: Ultimate', 'super-smash-bros-ultimate', 30, 0, 3, 0, 0, 0, '', '2022-02-19__super-smash.jpeg', 0, 0, 1, 0, NULL, 'Gaming icons clash in the ultimate brawl you can play anytime, anywhere. Smash rivals off the stage as new characters Simon Belmont and King K. Rool join Inkling, Ridley, and every fighter in Super Smash Bros. history. Enjoy enhanced speed and combat at new stages based on the Castlevania series, Super Mario Odyssey, and more\r\n\r\nHaving trouble choosing a stage? Then select the Stage Morph option to transform one stage into another while battling a series first Plus, new echo fighters Dark Samus, Richter Belmont, and Chrom join the battle. Whether you play locally or online, savor the faster combat, new attacks, and new defensive options, like a perfect shield. Jam out to 900 different music compositions and go 1-on-1 with a friend, hold a 4-player free-for-all, kick it up to 8-player battles and more. Feel free to bust out your GameCube controllers legendary couch competitions await or play together anytime!', 0, 0, 0, '2022-02-20 06:07:37', 2, NULL, NULL, 0, '2022-02-20 07:24:49', NULL),
(20, 'The Legend of Zelda: Breath of the Wild', 'the-legend-of-zelda-breath-of-the-wild', 60, 0, 3, 0, 0, 20, '', '2022-02-19__zelda.jpeg', 1, 0, 1, 0, NULL, 'Forget everything you know about The Legend of Zelda games. Step into a world of discovery, exploration, and adventure in The Legend of Zelda: Breath of the Wild, a boundary-breaking new game in the acclaimed series. Travel across vast fields, through forests, and to mountain peaks as you discover what has become of the kingdom of Hyrule in this stunning Open-Air Adventure. Now on Nintendo Switch, your journey is freer and more open than ever. Take your system anywhere, and adventure as Link any way you like.\r\n\r\n2017 Nintendo. The Legend of Zelda and Nintendo Switch are trademarks of Nintendo.', 0, 0, 0, '2022-02-20 06:08:47', 10, NULL, NULL, 0, '2022-02-20 07:24:30', NULL),
(21, 'Minecraft', 'minecraft', 30, 0, 3, 0, 0, 0, '', '2022-02-19__minecraft.jpeg', 1, 0, 1, 21, NULL, 'Minecraft is a game about placing blocks and going on adventures. Explore randomly generated worlds and build amazing things from the simplest of homes to the grandest of castles. Play in creative mode with unlimited resources or mine deep into the world in survival mode, crafting weapons and armor to fend off the dangerous mobs.\r\n\r\nIf you don’t already have a Nintendo Switch Online membership, you can try it out with a free 7-day trial. Don\'t worry if you already activated a previous free trial an additional seven-day free trial is now available.\r\n\r\nNintendo Switch Online membership and Nintendo Account required for online features. Free trial automatically converts to 1-month auto-renewing membership unless automatic renewal is turned off by the end of the free trial. Credit card/PayPal account required for 18+. Free trial cannot be redeemed by a Nintendo Account with an active Individual Membership or Family Membership. Not available in all countries. Internet access required for online features. Terms apply. nintendo.com/switch-online', 1, 5, 5, '2022-02-20 06:09:52', 20, NULL, NULL, 0, '2022-02-20 07:24:12', NULL),
(22, 'Donkey Kong Country: Tropical Freeze', 'donkey-kong-country-tropical-freeze', 60, 0, 3, 0, 0, 20, '', '2022-02-19__donkey.jpeg', 12, 0, 1, 0, NULL, 'Barrel-blast into a critically acclaimed Donkey Kong. Adventure awaits as this beloved franchise makes its Nintendo Switch debut with a banana-bunch of new features. Traverse islands packed with platforming perfection and nonstop action. The classic Kong in the original game returns, or mix things up by playing the story as Funky Kong in new Funky Mode!', 0, 0, 0, '2022-02-20 06:11:11', 15, NULL, NULL, 0, '2022-02-20 07:23:54', NULL),
(23, 'Pokemon Sword', 'pokemon-sword', 30, 0, 3, 0, 0, 0, '', '2022-02-19__pokemon-sword.jpeg', 16, 0, 1, 16, NULL, 'Become a Pokémon Trainer, embark on a new journey in the new Galar region, and unravel the mystery behind the Legendary Pokémon Zacian and Zamazenta. Explore the Wild Area, a vast expanse of land where the player can freely control the camera. And participate in Max Raid Battles in which players will face off against gigantic and super-strong Pokémon known as Dynamax Pokémon. Trainers who possess the special item Dynamax Band can Dynamax their own Pokémon. Get ready for the next Pokémon adventure in the Pokémon Sword and Pokémon Shield games.', 1, 5, 5, '2022-02-20 06:30:22', 30, NULL, NULL, 0, '2022-02-20 07:23:33', NULL),
(24, 'Super Mario Bros U: Deluxe', 'super-mario-bros-u-deluxe', 60, 0, 3, 0, 0, 20, '', '2022-02-19__supermario-deluxe.jpeg', 1, 0, 1, 0, NULL, 'Join Mario, Luigi, and pals for single-player or multiplayer fun anytime, anywhere. Take on two family-friendly, side-scrolling adventures with up to three friends as you try to save the Mushroom Kingdom. Includes the New Super Mario Bros. U and harder, faster New Super Luigi U games both of which include Nabbit and Toadette as playable characters\r\n\r\nTwo games in one, for double the fun. Simple, straightforward controls, new playable characters optimized for younger and less-experienced players, and a wealth of bonus content like a Hints gallery and helpful reference videos make this a perfect choice for anyone looking to introduce their family to the wonderful world of Mario.', 0, 0, 0, '2022-02-20 06:31:29', 30, NULL, NULL, 0, '2022-02-20 07:23:20', NULL),
(25, 'The Sims 4', 'the-sims-4', 60, 0, 4, 0, 0, 10, '', '2022-02-19__sim4.jpg', 0, 0, 1, 0, NULL, 'Explore endless possibilities playing out different scenarios from your life in this digital download of The Sims 4 for PC. Customization options let you create unique Sims and build perfect homes, so you can unleash your imagination. Travel across vibrant worlds and draw inspiration from the included gallery for an immersive The Sims 4 experience.\r\nThis item cannot be returned or refunded', 0, 0, 0, '2022-02-20 06:40:47', 30, NULL, NULL, 0, '2022-02-20 07:23:01', NULL),
(26, 'FIFA 22 Standard Edition', 'fifa-22-standard-edition', 60, 0, 4, 0, 0, 20, '', '2022-02-19__fifa22-pc.jpg', 1, 0, 1, 0, NULL, 'Powered by Football, EA SPORTS FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode.', 0, 0, 0, '2022-02-20 06:42:06', 30, NULL, NULL, 0, '2022-02-20 07:22:49', NULL),
(27, 'Overwatch Legendary Edition', 'overwatch-legendary-edition', 40, 0, 4, 0, 0, 0, '', '2022-02-19__overwatch.jpg', 0, 0, 1, 0, NULL, 'The world needs heroes. Join over 40 million players as you take your place in the world of Overwatch. Choose your hero from a diverse cast of soldiers, scientists, adventurers, and oddities. Bend time, defy physics, and unleash an array of extraordinary powers and weapons. Engage your enemies in iconic locations from around the globe in the ultimate team-based shooter.', 0, 0, 0, '2022-02-20 06:44:24', 5, NULL, NULL, 0, '2022-02-20 07:22:38', NULL),
(28, 'Plants vs. Zombies: Battle for Neighborville', 'plants-vs-zombies-battle-for-neighborville', 30, 0, 4, 0, 0, 0, '', '2022-02-19__plant-zoombie.jpg', 0, 0, 1, 0, NULL, 'Kick some grass in Plant vs. Zombies: Battle for Neighborville. Unearth 20 fully customizable character classes at launch in one social region, three free-roam regions, one PvE mode, six PvP modes, including Battle Arena, and more.', 1, 5, 5, '2022-02-20 06:48:39', 30, NULL, NULL, 0, '2022-02-20 07:22:16', NULL),
(29, 'Star Wars: Jedi Fallen Order', 'star-wars-jedi-fallen-order', 60, 0, 4, 0, 0, 5, '', '2022-02-19__jedi.jpg', 0, 0, 1, 0, NULL, 'Escape the Empire and master the Force in Star Wars Jedi: Fallen Order for PC. An innovative combat system tests your skills with lightsabers, and a range of Force abilities help you fight, explore and solve puzzles. Star Wars Jedi: Fallen Order features a gripping original story that keeps you on the edge of your seat.', 0, 0, 0, '2022-02-20 06:50:04', 5, NULL, NULL, 0, '2022-02-20 07:22:01', NULL),
(30, 'Anthem™ Legion of Dawn Edition', 'anthem-legion-of-dawn-edition', 80, 0, 4, 0, 0, 0, '', '2022-02-19__anthem.jpg', 1, 0, 1, 0, NULL, 'Get extra gear for your journey into the unknown with Anthem: Legion of Dawn Edition for PC. This digital bundle features access to the base game for heart-pounding RPG excitement as well as exclusive bonus content. Use the included legendary weapon and gear to boost your power in battle, and listen to the digital soundtrack as you play Anthem: Legion of Dawn Edition.', 0, 0, 0, '2022-02-20 06:52:34', 20, NULL, NULL, 0, '2022-02-20 07:21:45', NULL),
(31, 'Age of Empires: Definitive Edition', 'age-of-empires-definitive-edition', 20, 0, 4, 0, 0, 0, '', '2022-02-19__empire.jpg', 1, 0, 1, 0, NULL, 'Age of Empires is back and better than ever with the definitive edition for Windows 10 PCs¹. With modernized gameplay, all-new visuals, and a host of new features, Age of Empires: Definitive Edition is the complete RTS package. Engage in over 40 hours of updated campaign content with all new pacing, jump online in up to 8-player battles with competitive features and modes, experience 4K² HD visuals with overhauled animations, get creative with the scenario builder and share your creations with easy mod support. There’s never been a better time to jump in to Age of Empires. Welcome back to history.', 1, 3, 3, '2022-02-20 06:55:48', 10, NULL, NULL, 0, '2022-02-20 07:21:31', NULL),
(32, 'Battlefield V', 'battlefield-v', 60, 0, 4, 4, 0, 10, '', '2022-02-19__battlefield.jpg', 1, 0, 1, 0, NULL, 'Step back in time when you play Battlefield V for PC. This digital edition boasts rich, immersive graphics that put you in the center of epic WWII battles, and 64-player co-op modes bring frenzied fighting action to your screen in all-out war skirmishes. Battlefield V reveals compelling war stories while dropping your paratrooper group into key fighting locations throughout the Western front. Now also includes Firestorm - Battle Royale, reimagined for Battlefield.', 0, 0, 0, '2022-02-20 06:56:58', 10, NULL, NULL, 0, '2022-02-20 07:21:14', NULL),
(33, 'Need for Speed Heat', 'need-for-speed-heat', 60, 0, 4, 0, 0, 0, '', '2022-02-19__nfs.jpg', 0, 0, 1, 0, NULL, 'Start your engines with this digital copy of Need For Speed: Heat for PC. Enter the Speedhunter Showdown by day to compete and earn funds, and then enter thrilling illicit night races to build your reputation. Winning night races in Need For Speed: Heat opens access to new parts, but puts the cops on your tail for exciting chases.', 0, 0, 0, '2022-02-20 06:58:11', 12, NULL, NULL, 0, '2022-02-20 07:20:49', NULL),
(34, 'Star Wars: Squadrons', 'star-wars-squadrons', 40, 0, 4, 4, 0, 0, '', '2022-02-19__starwar.jpg', 1, 0, 1, 0, NULL, 'Buckle up for intergalactic pilot warfare in this digital download of Star Wars: Squadrons for PC. Iconic starfighters such as the A-wing and TIE bomber provide various ways of winning space battles, while the multiplayer mode lets you engage in five against five combat scenarios. Star Wars: Squadrons immerses you in the cockpit for a challenging first-person action experience, and the multiple levels offer different weapons and ranks to unlock.', 0, 0, 0, '2022-02-20 06:59:20', 12, NULL, NULL, 0, '2022-02-20 07:21:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(77, 35, 9),
(79, 36, 9),
(80, 37, 9),
(86, 40, 5),
(103, 45, 6),
(104, 44, 6),
(107, 42, 7),
(114, 41, 5),
(115, 38, 5),
(126, 39, 5),
(135, 48, 1),
(144, 47, 523),
(145, 47, 7),
(146, 43, 523),
(147, 43, 9),
(156, 46, 2),
(157, 50, 1),
(158, 50, 2),
(162, 51, 1),
(163, 51, 2),
(166, 49, 10),
(167, 49, 9),
(168, 52, 5),
(169, 52, 7),
(170, 53, 524),
(171, 53, 9),
(172, 54, 523),
(173, 54, 7),
(174, 55, 1),
(175, 55, 7),
(176, 56, 525),
(177, 56, 7),
(178, 57, 526),
(179, 57, 3),
(180, 58, 524),
(181, 58, 3),
(182, 59, 4),
(183, 59, 8),
(184, 60, 524),
(185, 60, 9),
(186, 61, 524),
(187, 61, 9),
(188, 62, 527),
(189, 63, 1),
(190, 64, 5),
(191, 64, 3),
(194, 65, 5),
(195, 66, 5),
(196, 66, 3),
(197, 67, 3),
(198, 68, 528),
(199, 68, 9),
(200, 69, 16),
(201, 69, 9),
(202, 70, 16),
(203, 70, 9),
(204, 71, 16),
(205, 71, 9),
(206, 72, 16),
(207, 72, 8),
(208, 73, 16),
(209, 74, 5),
(212, 75, 5),
(213, 75, 3),
(214, 76, 12),
(215, 76, 9),
(216, 77, 5),
(217, 78, 5),
(218, 78, 8),
(219, 79, 5),
(220, 79, 8),
(221, 80, 15),
(222, 80, 9),
(223, 81, 5),
(224, 81, 9),
(225, 82, 5),
(226, 82, 8),
(227, 83, 5),
(228, 83, 7),
(230, 33, 5),
(231, 33, 9),
(232, 34, 5),
(233, 34, 9),
(234, 32, 5),
(235, 32, 2),
(238, 31, 15),
(239, 31, 9),
(240, 30, 5),
(241, 30, 7),
(242, 29, 5),
(243, 29, 7),
(244, 28, 5),
(245, 28, 7),
(246, 27, 12),
(247, 27, 9),
(248, 26, 5),
(249, 26, 3),
(250, 25, 5),
(251, 25, 9),
(252, 24, 16),
(253, 24, 8),
(254, 23, 16),
(255, 23, 8),
(256, 22, 16),
(257, 22, 8),
(258, 21, 15),
(259, 21, 9),
(260, 20, 16),
(261, 20, 9),
(262, 19, 16),
(263, 19, 9),
(264, 18, 12),
(265, 18, 3),
(266, 17, 5),
(267, 17, 2),
(268, 16, 5),
(269, 16, 3),
(270, 15, 12),
(271, 15, 2),
(272, 14, 1),
(273, 14, 3),
(274, 13, 13),
(275, 13, 3),
(276, 12, 12),
(277, 12, 8),
(278, 11, 12),
(279, 11, 9),
(280, 10, 4),
(281, 10, 7),
(282, 9, 12),
(283, 9, 8),
(284, 8, 14),
(285, 8, 3),
(286, 7, 6),
(287, 7, 3),
(288, 6, 1),
(289, 6, 2),
(290, 5, 13),
(291, 5, 8),
(292, 4, 12),
(293, 4, 9),
(294, 3, 12),
(295, 3, 8),
(296, 2, 10),
(297, 2, 7),
(298, 1, 1),
(299, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(1, 'hhh.jpg', '2020-04-17__hhhjpg.jpg', 30, '2020-04-16 17:18:50', NULL),
(2, 'ql.jpg', '2020-04-17__qljpg.jpg', 32, '2020-04-16 17:56:12', NULL),
(3, 'gf.jpg', '2020-04-17__gfjpg.jpg', 33, '2020-04-17 03:35:16', NULL),
(4, 'MggGJuH.jpg', '2020-04-17__mgggjuhjpg.jpg', 34, '2020-04-17 03:40:21', NULL),
(5, 'h1.jpg', '2020-04-17__h1jpg.jpg', 35, '2020-04-17 03:44:48', NULL),
(6, 'h2.jpg', '2020-04-17__h2jpg.jpg', 36, '2020-04-17 03:51:20', NULL),
(7, 'h4.jpg', '2020-04-17__h4jpg.jpg', 37, '2020-04-17 03:56:38', NULL),
(8, 'h22.jpg', '2020-04-17__h22jpg.jpg', 38, '2020-04-17 06:18:23', NULL),
(9, 'h28.jpg', '2020-04-17__h28jpg.jpg', 40, '2020-04-17 06:40:44', NULL),
(10, 'h29.png', '2020-04-17__h29png.png', 41, '2020-04-17 06:59:39', NULL),
(11, 'h32.jpg', '2020-04-17__h32jpg.jpg', 42, '2020-04-17 07:02:29', NULL),
(12, 'h35.jpg', '2020-04-17__h35jpg.jpg', 43, '2020-04-17 07:09:40', NULL),
(13, 'h47.jpg', '2020-04-17__h47jpg.jpg', 45, '2020-04-17 07:18:27', NULL),
(14, 'h48.jpg', '2020-04-17__h48jpg.jpg', 46, '2020-04-17 07:23:20', NULL),
(15, 'h51.jpg', '2020-04-17__h51jpg.jpg', 47, '2020-04-17 07:26:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(11, 16, 2, 5, 0, 'Great game!', '2022-02-20 07:19:44', '2022-02-20 07:19:44'),
(12, 16, 5, 5, 0, 'Fun game to play!', '2022-02-20 18:04:34', '2022-02-20 18:04:34'),
(13, 16, 9, 3, 0, 'GREAT CHOICE!', '2022-02-20 18:06:31', '2022-02-20 18:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Banner1', 'https://alabamanewscenter.com/2020/04/22/new-name-same-games-the-world-games-birmingham-updates-official-moniker/', '2022-02-18__banner1.png', 1, 1, 0, '2022-02-19 04:42:13', '2022-02-19 04:42:13'),
(2, 'Banner2', 'https://www.global-esports.news/general/fairs-events-2022-the-most-important-dates-and-livestreams-for-pc-gamers/', '2022-02-18__banner2.jpg', 1, 1, 0, '2022-02-19 04:45:40', '2022-02-19 04:45:40'),
(3, 'Banner3', 'https://facilis-76989.ticketbud.com/classic-game-fest-2022', '2022-02-18__banner3.png', 1, 1, 0, '2022-02-19 04:41:57', '2022-02-19 04:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Buy 1 Get 1 Free', NULL, 1, NULL, '<p>Buy 1 Get 1 Free</p>', '2022-02-17 21:13:10', '2022-02-17 21:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(3, 'Ubisoft', '208987654', 'ubisoft@ubisoft.org', '625 Third Street San Francisco, CA 94107 USA', '2022-02-19 06:39:09', NULL),
(4, 'Electronic Arts', '306123456', 'electronicarts@gmail.com', '209 Redwood Shores Parkway Redwood City, CA 94065 USA', '2022-02-19 06:40:30', NULL),
(5, 'Rockstar Games', '306123456', 'rockstargames@live.com', '622 Broadway, New York, NY 10012, USA', '2022-02-19 07:13:23', NULL),
(6, 'Sony', '408132465', 'sony@gmail.com', '550 Madison Avenue, New York, NY 10022-3211', '2022-02-19 07:37:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(21, 16, 0, 26, 'John', 'john@gmai.com', '123456', 'adfa adf', NULL, -1, 2, '2022-02-10 21:54:18', '2022-02-10 21:57:19'),
(22, 16, 0, 230000, 'John', 'john@gmai.com', '123456', 'sdf', NULL, -1, 2, '2022-02-10 21:57:41', '2022-02-10 21:59:47'),
(23, 16, 0, 230000, 'John', 'john@gmai.com', '123456', 'sdf', NULL, -1, 2, '2022-02-10 21:57:57', '2022-02-10 21:59:48'),
(26, 16, 13, 0, 'John', 'john@gmai.com', '123456', '12 abv', NULL, 3, 2, '2022-02-14 05:06:42', '2022-02-19 03:02:32'),
(27, 16, 13, 29, NULL, NULL, NULL, NULL, NULL, 3, 1, '2022-02-18 05:36:08', '2022-02-20 18:49:46'),
(28, 16, 13, 41, NULL, NULL, NULL, NULL, NULL, 3, 1, '2022-02-18 06:28:28', '2022-02-20 18:49:45'),
(29, 16, 13, 44, NULL, NULL, NULL, NULL, NULL, 3, 1, '2022-02-20 18:10:19', '2022-02-20 18:49:43'),
(30, 16, 0, 50, 'John', 'john@gmai.com', '123456', NULL, NULL, 1, 1, '2022-02-20 19:14:20', NULL),
(31, 16, 0, 59, 'John', 'john@gmai.com', '123456', NULL, NULL, 1, 1, '2022-02-21 04:09:24', NULL),
(32, 16, 0, 22, 'John', 'john@gmai.com', '123456', '1234 abcd', NULL, 1, 1, '2022-02-22 02:34:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'John', 'john@gmai.com', NULL, '$2y$10$v1Ktbar6BvtZnpMvxOT1kOFHed/k68P/H5jvjX8PJQ9fGRljbLktS', '123456', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-10T07:29:09.146515Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-11T00:05:46.188700Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-11T03:53:09.602317Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-14T04:57:38.523696Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-14T05:05:39.406440Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-14T06:01:29.847533Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-15T02:26:59.285210Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-15T05:50:44.810461Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-16T06:10:51.735525Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.80\",\"time\":\"2022-02-17T07:07:31.905540Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-17T17:19:34.208358Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-18T05:19:07.165075Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-18T20:14:32.493407Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-19T03:02:42.822861Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-19T17:44:35.831399Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-20T04:15:05.895259Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-20T18:02:12.918134Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-20T18:57:28.938351Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-20T18:57:39.550887Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-21T04:07:14.797722Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-22T02:33:08.387330Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-22T02:37:19.584049Z\"}]', 2, '1234 abcd', NULL, NULL, '2022-02-10 21:45:03', '2022-02-22 02:33:27'),
(17, 'Test Demo', 'testdemo@gmail.com', NULL, '$2y$10$IKQZGZ3nbQOa6UuGBZvu/ePpxtbiXRu5jvedXPccvOOgLbjl23E2W', '123456798', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-17T17:50:27.567530Z\"}]', 0, NULL, NULL, NULL, '2022-02-17 17:50:04', NULL),
(18, 'John Doe', 'john.doe@gmail.com', NULL, '$2y$10$cq/lLUoRSsTpKOHOWTttj.ch6eRbolaZCMLcKdzZ03QdQna15ZNoy', '4088939855', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-22T02:38:47.544748Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"98.0.4758.102\",\"time\":\"2022-02-22T02:44:50.229836Z\"}]', 0, '1 Main St, San Jose, CA 95131', '2022-02-21__profile-user.png', NULL, '2022-02-22 02:36:18', '2022-02-22 02:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(6, 1, 11),
(8, 1, 12),
(9, 6, 14),
(5, 21, 8),
(2, 22, 2),
(1, 23, 1),
(7, 28, 10),
(16, 30, 18),
(15, 38, 17);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_product_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(2, 65, 30000, 1000, NULL, '2022-02-20 06:19:46', '2022-02-20 06:20:11'),
(3, 70, 10000, 60, NULL, '2022-02-20 06:45:04', '2022-02-20 06:45:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
