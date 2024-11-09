import 'package:flutter/material.dart';

List<String> images = [
  'assets/images/Bulan_TereLiye.jpg',
  'assets/images/Dilan.jpg',
  'assets/images/LaskarPelangi.jpg',
  'assets/images/TentangKamu_TereLiye.jpg',
  'assets/images/Pulang_TereLiye.jpg',
  'assets/images/JinggadanSenja_EstiKinasih.jpg',
];

List<String> Kategori = [
  'Romantis',
  'Petualangan',
  'Fantasi',
  'Horor',
  'Fiksi Ilmiah',
  'Sejarah',
];

class Novel {
  final String imageUrl;
  final String title;
  final String author;
  final String synopsis;
  final String link;
  final String review;

  Novel({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.synopsis,
    required this.link,
    required this.review,
  });
}

List<Novel> novels = [
  Novel(
    imageUrl: 'assets/images/novel1.png',
    title: 'Novel A',
    author: 'Penulis A',
    synopsis: 'Ini adalah sinopsis untuk Novel A.',
    link: 'https://link-novel-a.com',
    review: 'Ulasan untuk Novel A.',
  ),
  Novel(
    imageUrl: 'assets/images/novel2.png',
    title: 'Novel B',
    author: 'Penulis B',
    synopsis: 'Ini adalah sinopsis untuk Novel B.',
    link: 'https://link-novel-b.com',
    review: 'Ulasan untuk Novel B.',
  ),
  Novel(
    imageUrl: 'assets/images/novel3.png',
    title: 'Novel C',
    author: 'Penulis C',
    synopsis: 'Ini adalah sinopsis untuk Novel C.',
    link: 'https://link-novel-c.com',
    review: 'Ulasan untuk Novel C.',
  ),
];