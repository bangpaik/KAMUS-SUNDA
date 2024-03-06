import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detail_screen.dart'; // Import halaman detail_screen.dart

class Kosakata {
  final String idKosakata;
  final String kosakata;
  final String terjemahan;
  final String detail;
  final String created;

  Kosakata({
    required this.idKosakata,
    required this.kosakata,
    required this.terjemahan,
    required this.detail,
    required this.created,
  });

  factory Kosakata.fromJson(Map<String, dynamic> json) {
    return Kosakata(
      idKosakata: json['id_kosakata'],
      kosakata: json['kosakata'],
      terjemahan: json['terjemahan'],
      detail: json['detail'],
      created: json['created'],
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Kosakata> kosakataList;
  late List<Kosakata> filteredKosakataList;
  bool isLoading = false;
  String errorMessage = '';
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    kosakataList = [];
    filteredKosakataList = [];
    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.get(Uri.parse('http://192.168.213.42/KAMUS-SUNDA/get_kosakata.php'));
      print(response.body); // Debugging: Print response body to console

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body)['data'];
        setState(() {
          kosakataList = responseData.map((item) => Kosakata.fromJson(item)).toList();
          filteredKosakataList = List.from(kosakataList);
          isLoading = false;
          errorMessage = '';
        });
      } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
      setState(() {
        isLoading = false;
        errorMessage = 'Failed to fetch data. Please check your internet connection.';
      });
    }
  }

  void searchKosakata(String query) {
    setState(() {
      filteredKosakataList = kosakataList.where((kosakata) {
        // Filter data berdasarkan kata kunci pencarian
        return kosakata.kosakata.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kamus Besar Bahasa Sunda',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF2196F3),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(child: Text(errorMessage))
          : kosakataList.isEmpty
          ? Center(child: Text('No data available'))
          : Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                searchKosakata(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Masukkan kata kunci pencarian...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredKosakataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    filteredKosakataList[index].kosakata,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  leading: Icon(Icons.book, color: Colors.black),
                  subtitle: Text(
                    filteredKosakataList[index].detail,
                    style: TextStyle(fontFamily: 'Montserrat', color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  onTap: () {
                    // Ketika item diklik, beralih ke halaman detail dengan data yang sesuai
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          kosakata: filteredKosakataList[index].kosakata,
                          terjemahan: filteredKosakataList[index].terjemahan,
                          detail: filteredKosakataList[index].detail,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
