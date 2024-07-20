//import 'package:flutter/material.dart';

class CakeDetail{
  final String id;
  final String image;
  final String name;
  final double price;
  final String rate;
  final String description;
  final String cookingTime;
  int quantity;

  CakeDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.description,
    required this.cookingTime,
    required this.quantity

  });
}
List<CakeDetail> cakesItems = [
  CakeDetail(
    id: '1', 
    image: 'https://pmoments.vn/public/upload/images/products/2021-05-24/V7oNtEnaLzkXQLFppnF3b6LnWsEZUwqgQMFd4vwV.png', 
    name: 'Bánh kem socola', 
    price: 435,
    rate: '4.5',
    cookingTime: '24min',
    description: 'Tiramisu là một ổ bánh ngọt thơm, giòn tan của hạt peanut, hay vị chua nhẹ đến từ lớp mứt mâm xôi tươi như ủ lấy tất cả hương vị.',
    quantity: 1,
    ),
    CakeDetail(
    id: '2', 
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BrS2LKECU35rTp6HI4zsjuXH-Uhku7-jIQ&s',
    name: 'Bánh kem vanila', 
    price: 435,
    rate: '5.0',
     cookingTime: '24min',
    description: 'Chocolate là một ổ bánh ngọt thơm, tan chậm của vị vani, phô mai tươi xen kẽ với lớp bánh bông lan mềm mịn, và sự bất ngờ của bánh quy vụn giòn tan',
    quantity: 1
    ),
    CakeDetail(
    id: '3', 
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSWAiRoXm7tIaw9JwbyiT3wyjKM5ml0OHICA&s', 
    name: 'Bánh kem mix', 
    price: 550,
    cookingTime: '24min',
    rate: '4.5',
    description: 'Bánh mix mang đến vị béo ngậy, thơm lừng, tan chảy nhẹ nhàng trong miệng của kem tươi, sự mềm mịn, xốp nhẹ của cốt bánh bông lan',
    quantity: 1,
    ),
    CakeDetail(
    id: '4', 
    image: 'https://tiodayne.io.vn/wp-content/uploads/2024/05/sp1.4.jpg', 
    name: 'Bánh kem cherry', 
    price: 435,
    cookingTime: '18min',
    rate: '5.0',
    description: 'Bánh có vị ngọt vừa kèm theo lớp nhân chua chua ngọt ngọt làm cho mẫu bánh mang đến hương vị tinh tế khi thưởng thức.',
    quantity: 1,
    ),
    CakeDetail(
    id: '5', 
    image: 'https://friendshipcakes.com/wp-content/uploads/2022/03/minimal-4.jpg', 
    name: 'Bánh kem bắp', 
    price: 435,
    cookingTime: '20min',
    rate: '4.5',
    description: 'Bánh kem bắp có lớp mousse làm từ trái bắp tươi & kem sữa, bên trong là cốt bánh gato vani xen kẽ lớp custard sữa bắp.',
    quantity: 1,
    ),
    CakeDetail(
    id: '6', 
    image: 'https://lh4.googleusercontent.com/proxy/Z3HEyxMSMRYURXuMKm1ybwn48CvccUmhu1FuKBSSSKS8LTODIMwijBdhREUueVD5p1S7lVBS94uGpJOmQZKMBWaZy5IhIx1XhbITffyyTacN', 
    name: 'Bánh kem dưa lưới', 
    rate: '5.0',
    price: 435,
     cookingTime: '15min',
    description: 'Bánh có vị thơm và béo nhẹ nhàng từ phô mai tươi kết hợp cùng kem sữa và Dưa Lưới Mật giống Fuji nấu chậm, bên trong là rất nhiều dưa lưới tươi ',
    quantity: 1,
    ),
    CakeDetail(
    id: '7', 
    image: 'https://lh6.googleusercontent.com/proxy/nKYNdPpGC-41JHTgq5wJ7DIlNjDPgmDcTBCZWNp7zLHz-ZJ6x-qyh9dv1dGqUq-xt5P7lR6jTKoUq7L91XAFrO0h6U730S-D3Qmu', 
    name: 'Bánh kem dừa', 
    price: 435,
    rate: '4.0',
     cookingTime: '5min',
    description: 'Lá Dừa mang đến hương vị độc đáo khi hòa quyện giữa bánh bông lan vị dừa lá dứa mềm ẩm kết hợp cùng kem dừa thơm lừng, ngậy béo',
    quantity: 1,
    ),
    CakeDetail(
    id: '8', 
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_kRJMlaBlkyozKPQWKvLphPuxadCrIHpyFw&s', 
    name: 'Bánh kem matcha ', 
    price: 435,
    rate: '4.0',
     cookingTime: '24min',
    description: 'Bánh matcha đem tới hương vị trà xanh thơm mịn, kết hợp với kem tươi, cafe làm cho bánh béo ngậy. Các loại trái cây vị chua và tươi sẽ làm bớt đi độ béo của kem, để người dùng có thể thưởng thức nhiều hơn',
    quantity: 1,
    ),
];