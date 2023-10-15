// ignore_for_file: file_names

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProductViral extends StatelessWidget {
  const ProductViral({
    Key? key,
    required this.photo,
    required this.nama,
    required this.harga,
    this.berat,
  }) : super(key: key);

  final String photo;
  final String nama;
  final String harga;
  final String? berat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 58,
            decoration: const BoxDecoration(
              color: Color(0xffFF4200),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(9),
                bottomRight: Radius.circular(9),
              ),
            ),
            child: const Center(
              child: Text(
                "Lagi Viral",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Image.asset(
          //   photo,
          //   width: 116,
          //   height: 116,
          // ),
          Image.network(photo, width: 116, height: 116),
          Container(
            margin: const EdgeInsets.only(left: 4, bottom: 10),
            child: Text(
              nama,
              style: const TextStyle(
                fontSize: 10,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  harga,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Text(
                      '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 7,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: Row(
              children: [
                Icon(
                  EvaIcons.star,
                  color: Color(0xffFDC810),
                  size: 8,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "4.6",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 6,
                      color: Colors.black),
                ),
                Text(
                  " | terjual 1260",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 6,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Color(0xffF4F4F4),
                ),
                child: const Center(
                  child: Icon(
                    EvaIcons.heartOutline,
                    size: 14,
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffFF4200),
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "+ Keranjang",
                    style: TextStyle(
                      color: Color(0xffFF4200),
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }
}
