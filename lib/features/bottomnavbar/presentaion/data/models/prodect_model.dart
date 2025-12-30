import 'package:ecommerce/generated/app_assets.dart';

class ProdectModel {
  final String id;
  final String title;
  final int price;
  final String imageUrl;
  final int? discontVule;
  final String category;
  final double? rating;

  ProdectModel({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.discontVule,
    this.category = 'Other',
    this.rating,
  });
}

List<ProdectModel> prodectModelList = [
  ProdectModel(
    id: '1',
    title: 'Dorothy Perkins',
    price: 100,
    imageUrl: AppAssets.imagesSale,
    discontVule: -20,
    category: 'Evening Dress',
    rating: 4.5,
  ),

  ProdectModel(
    id: '2',
    title: 'Sitlly',
    price: 200,
    imageUrl: AppAssets.imagesSale2,
    category: 'Sport Dress',
    rating: 4.0,
    discontVule: -12,
  ),
  ProdectModel(
    id: '3',
    title: 'Dorothy Perkins',
    price: 50,
    imageUrl: AppAssets.imagesSale3,
    category: 'Evening Dress',
    rating: 10,
    discontVule: -30,
  ),
  ProdectModel(
    id: '4',
    title: 'Dorothy Perkins',
    price: 60,
    imageUrl: AppAssets.imagesSale,
    category: 'Evening Dress',
    rating: 2,
    discontVule: -15,
  ),
  ProdectModel(
    id: '3',
    title: 'Dorothy Perkins',
    price: 80,
    imageUrl: AppAssets.imagesSale2,
    category: 'Evening Dress',
    rating: 3,
  ),
  // Add more products as needed
];
