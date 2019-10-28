import 'package:flutter/material.dart';
import 'package:ol_shop/view/widget/article_info.dart';

class PageArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Information'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Zakat',
              ),
              Tab(
                text: 'Infaq',
              ),
              Tab(
                text: 'Shodaqoh',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            new TabZakat(),
            new TabInfaq(),
            new TabShodaqoh()
          ],
        ),
      ),
    );
  }
}
class TabZakat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ArticleCard(),
    );
  }
}
class TabInfaq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ArticleCard(),
    );
  }
}
class TabShodaqoh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ArticleCard(),
    );
  }
}