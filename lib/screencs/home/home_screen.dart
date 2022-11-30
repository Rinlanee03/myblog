import 'package:flutter/material.dart';
import 'package:myblog/constants.dart';
import 'package:myblog/models/blog.dart';
import 'package:myblog/responce.dart';
import 'package:myblog/screencs/home/blog_post.dart';
import 'package:myblog/screencs/home/categories.dart';
import 'package:myblog/screencs/home/recent_post.dart';
import 'package:myblog/screencs/home/serch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          )
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
     if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}