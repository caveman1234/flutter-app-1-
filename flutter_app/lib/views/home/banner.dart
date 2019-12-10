import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
class HomeBanner extends StatefulWidget{
  @override
  _HomeBanner createState() => _HomeBanner();
}
class _HomeBanner extends State<HomeBanner>{
  List<Map<String,String>> _bannerImages = [
    {"title":"新时代，新个税","subtitle":"倾心服务，因你改变","src":"assets/images/banner1.jpg"},
    {"title":"子女教育转向附加扣除","subtitle":"教育孩子，我们和您一样用心","src":"assets/images/logo.png"},
    {"title":"继续教育专项附加扣除","subtitle":"一点点收获，一点点成长","src":"assets/images/banner1.jpg"},
    {"title":"大病医疗专项附加扣除","subtitle":"乐观和坚强，是面对困难的最好良药","src":"assets/images/banner1.jpg"},
    {"title":"住房贷款利息专项附加扣除","subtitle":"再好的门外世界，也不如门内的温馨","src":"assets/images/banner1.jpg"},
    {"title":"住房租金专项附加扣除","subtitle":"梦想和奋斗，是我们在这座城市的落脚点","src":"assets/images/banner1.jpg"},
    {"title":"赡养老人专项附加扣除","subtitle":"再忙也不要忘了，家中守候的他们","src":"assets/images/banner1.jpg"},
    {"title":"综合所得汇算清缴","subtitle":"每一次改变，都是为了做得更好","src":"assets/images/banner1.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    Widget _buildBannerItem(int index){
      var item = _bannerImages[index];
      return Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(item["src"],fit: BoxFit.cover,),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(children: <Widget>[
                Container(
                  height: 25,
                  child: Text(item["title"],style: TextStyle(color: Colors.white,fontSize: 15,),),
                ),
                Container(
                  height: 20,
                  child: Text(item["subtitle"],style: TextStyle(color: Colors.white,fontSize: 13),),
                ),
              ],),
            )
          ],

        ),
      );
    }
    return Container(
      height: 100,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return _buildBannerItem(index);
        },
        itemCount: _bannerImages.length,
        viewportFraction: 1,
        scale: 1,
        pagination: new SwiperPagination(),
        loop: false,
        autoplay: true,
        autoplayDelay: 5000,
      ),
    );
  }
}