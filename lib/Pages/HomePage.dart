// ignore_for_file: file_names, must_be_immutable
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masterbagasi/Pages/JelajahPage.dart';
import 'package:masterbagasi/Pages/MenuPage.dart';
import 'package:masterbagasi/Pages/SuguhanPage.dart';
import 'package:masterbagasi/Pages/WishlistPage.dart';
import 'package:masterbagasi/Pages/widgets/ProductTerlaris.dart';
import 'package:masterbagasi/Pages/widgets/ProductViral.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  int selectedItemIndex = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bottomNavigationBarWidget = [
    HomePage(),
    const SuguhanPage(),
    const JelajahPage(),
    const WishlistPage(),
    const MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xffF4F4F4),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color(0xffF4F4F4),
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffFF4200),
          unselectedItemColor: const Color(0xff6E6E6E),
          selectedLabelStyle: const TextStyle(
            color: Color(0xffFF4200),
            fontWeight: FontWeight.bold,
            fontSize: 7,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xff6E6E6E),
            fontSize: 7,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.homeOutline,
                size: 20,
                color: 0 == widget.selectedItemIndex
                    ? const Color(0xffFF4200)
                    : Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.imageOutline,
                size: 20,
                color: 1 == widget.selectedItemIndex
                    ? const Color(0xffFF4200)
                    : Colors.black,
              ),
              label: 'Suguhan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.compassOutline,
                size: 20,
                color: 2 == widget.selectedItemIndex
                    ? const Color(0xffFF4200)
                    : Colors.black,
              ),
              label: 'Jelajah Nusantara',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.heartOutline,
                size: 20,
                color: 3 == widget.selectedItemIndex
                    ? const Color(0xffFF4200)
                    : Colors.black,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.menu2Outline,
                size: 20,
                color: 4 == widget.selectedItemIndex
                    ? const Color(0xffFF4200)
                    : Colors.black,
              ),
              label: 'Menu',
            ),
          ],
          currentIndex: widget.selectedItemIndex,
          onTap: (int index) {
            setState(() {
              widget.selectedItemIndex = index;
            });
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                height: 81,
                color: const Color(0xff3838ab),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 37,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xffD1D3D9),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      SizedBox(
                        width: 176,
                        child: Text(
                          "Cari di Masterbagasi",
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Icon(
                        EvaIcons.bellOutline,
                        color: Color(0xffD1D3D9),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Icon(
                        EvaIcons.emailOutline,
                        color: Color(0xffD1D3D9),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Icon(
                        EvaIcons.shoppingCartOutline,
                        color: Color(0xffD1D3D9),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: const Color(0xff25258C),
                child: const Row(
                  children: [
                    Icon(
                      EvaIcons.pinOutline,
                      color: Color(0xffD1D3D9),
                      size: 15,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Dikirim ke",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "United States",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      EvaIcons.arrowIosDownward,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/images/png/banneratas.png',
              ),
              //////////////////Kategori Produk Indonesia////////////////
              const SizedBox(
                height: 14,
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: const Text(
                  "Kategori Produk Indonesia",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/product.png',
                            width: 143,
                            height: 143,
                          ),
                          Container(
                            width: 143,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(3),
                              ),
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Siap Saji Ala Kaki Lima",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/product2.png',
                            width: 143,
                            height: 143,
                          ),
                          Container(
                            width: 143,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(3),
                              ),
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Cemilan Buat Rebahan",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/product3.png',
                            width: 143,
                            height: 143,
                          ),
                          Container(
                            width: 143,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(3),
                              ),
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                            child: const Text(
                              "Mie Instant Rasa Nusantara",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ////////////////BRAND ASLI INDONESIA//////////////////////////////////////////////////
              const SizedBox(
                height: 14,
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: const Text(
                  "Brand Asli Indonesia",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/brand1.png',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: Text(
                              "Indofood",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/brand2.png',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: Text(
                              "Bamboe",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/brand3.png',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: Text(
                              "Indomie",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/png/brand4.png',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: Text(
                              "Ajinomoto",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
/////////////////////////////////////////LAGI VIRAL//////////////////////////////////////////////////////////
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(
                    0xff3434aa,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lagi Viral",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                          color: Color(0xffFF4200),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductViral(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductViral(
                        photo: 'assets/images/png/viral2.png',
                        nama: 'Baso Aci Bapper Tulang Rangu 3 pcs',
                        harga: 'Rp97.900',
                        berat: '660g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductViral(
                        photo: 'assets/images/png/viral3.png',
                        nama: 'Mr Crispy Sambal Teri Medan',
                        harga: 'Rp57.200',
                        berat: '200g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductViral(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/png/bannerPromo.png',
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  "Cek Tarif ke Negara Lainnya",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xffe0e0e0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Isi Dapur Indonesia",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                          color: Color(0xffFF4200),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color(0xffe0e0e0),
                child: Image.asset(
                  'assets/images/png/bannerDapur.png',
                ),
              ),
////////////////////////////CEMILAN BUAT REBAHAN//////////////////////////////
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xff3434aa),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cemilan Buat Rebahan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                          color: Color(0xffFF4200),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral2.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral3.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 280,
                color: const Color(0xffcdcdcd),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lebih Hemat Dengan Bundling",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Lihat Semua",
                            style: TextStyle(
                              color: Color(0xffFF4200),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 198,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/png/bannerBundling.png',
                              width: 245,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 88,
                                  height: 80,
                                  child: Text(
                                    "Bundling Musim Dingin",
                                    style: TextStyle(
                                      color: Color(0xff25258C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 119,
                                  height: 38,
                                  color: const Color(0xff3434aa),
                                  child: const Center(
                                    child: Text(
                                      "Rp2.300.000",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    Container(
                                      width: 16,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFF0F0F)
                                            .withOpacity(0.2),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "12%",
                                          style: TextStyle(
                                              color: Color(0xffFF0F0F),
                                              fontSize: 6,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Rp2.615.000",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
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
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        " | terjual 1260",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 8,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 6),
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
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
////////////////////////TERLARIS DI MASTER BAGASI/////////////////
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xff3434aa),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terlaris di Master Bagasi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral2.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral3.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xfff2f2f2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kerajinan Tangan Karya Anak Bangsa",
                            style: TextStyle(
                              color: Color(0xff2C2C2C),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Lihat Semua",
                            style: TextStyle(
                              color: Color(0xffFF4200),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Image.asset(
                        'assets/images/png/bannerKerajinan.png',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 51,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral2.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral3.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ProductTerlaris(
                        photo: 'assets/images/png/viral1.png',
                        nama: 'Makaroni Ngehe Pedas Asin',
                        harga: 'Rp28.600',
                        berat: '250g',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
