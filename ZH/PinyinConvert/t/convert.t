# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 3 };
use Lingua::ZH::PinyinConvert qw/convert/;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

ok( convert ('t', 'h', <<DAODEJING)
dao ke dao fei chang dao
ming ke ming fei chang ming
wu, ming tian sia jhih shih
you, ming wan wu jhih mu
gu, chang wu, yu yi guan ci miao
chang you, yu yi guan ci jiao
cih liang jhih, tong chu er yi ming tong wei jhih syuan
syuan jhih you syuan jhong miao jhih men
DAODEJING
,
<<DAODEJING
dao ke dao fei chang dao
ming ke ming fei chang ming
wu, ming tian xia zhi shi
you, ming wan wu zhi mu
gu, chang wu, yu yi guan qi miao
chang you, yu yi guan qi jiao
ci liang zhi, tong chu er yi ming tong wei zhi xuan
xuan zhi you xuan zhong miao zhi men
DAODEJING
);

ok( convert ('t', 'h', <<YIJING)
cian, kun, tun, meng, syu, song, shih, bi,
siao chu, lyu, tai, pi, tong ren, da you, cian, yu
suei, gu, lin, guan, shih ke, ben, bo, fu
wu wang, da chu, yi, da guo, kan, li, sian, heng
tun, da jhuang, jin, ming yi, jia ren, kuei, jian, jie
sun, yi, guai, hou, cuei, sheng, kun, jing, ge
ding, jhen, gen, jian, guei mei, fong, lyu
syun, duei, huan, jie, jhong fu, siao guo, ji ji, wei ji
YIJING
,
<<YIJING
qian, kun, tun, meng, xu, song, shi, bi,
xiao chu, lU, tai, pi, tong ren, da you, qian, yu
sui, gu, lin, guan, shi ke, ben, bo, fu
wu wang, da chu, yi, da guo, kan, li, xian, heng
tun, da zhuang, jin, ming yi, jia ren, kui, jian, jie
sun, yi, guai, hou, cui, sheng, kun, jing, ge
ding, zhen, gen, jian, gui mei, feng, lU
xun, dui, huan, jie, zhong fu, xiao guo, ji ji, wei ji
YIJING
    );
