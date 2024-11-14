import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO : 1. Deskripsi variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = 'Cyndi Claudia';
  String userName = 'cyndicw';
  int favoriteCandiCount = 0;

  //TODO : 5. Implementasi fungsi SignIn
  void signIn(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  //TODO : 6. Implementasi fungsi SignOut
  void signOut(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO : 2. Buat Bagian Profile header (isinya gambar profil)
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              shape: BoxShape.circle),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.deepPurple[50],
                              )),
                      ],
                    ),
                  ),
                ),
                // TODO : 3. Buat Bagian Profile Info (isinya info profil)
                // Baris satu Pengguna
                const SizedBox(height: 20,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(height: 4,),
                Row(
                  children:[
                     SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child:const Row(
                        children:[
                          Icon(Icons.lock, color: Colors.amber,),
                          const SizedBox(width: 8,),
                          Text('Pengguna', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(': $userName',
                        style : const TextStyle(fontSize: 18),
                      )),
                  ],
                ),
                // Baris dua Nama
                const SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(height: 4,),
                Row(
                  children:[
                     SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child:const Row(
                        children:[
                          Icon(Icons.person, color: Colors.blue,),
                          const SizedBox(width: 8,),
                          Text('Pengguna', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(': $fullName',
                        style : const TextStyle(fontSize: 18),
                      )),
                      if (isSignedIn)
                        const Icon(Icons.edit),
                  ],
                ),
                // Baris tiga favorit
                const SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(height: 4,),
                Row(
                  children:[
                     SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child:const Row(
                        children:[
                          Icon(Icons.favorite, color: Colors.red,),
                          const SizedBox(width: 8,),
                          Text('Pengguna', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(': $favoriteCandiCount',
                        style : const TextStyle(fontSize: 18),
                      )
                    ),
                  ],
                ),
                // TODO : 4. Buat Bagian Profile Action (isinya tombil sign in / sign out)
                const SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(height: 20,),
                
                isSignedIn 
                  ? TextButton(
                    onPressed: signOut, child: Text('Sign Out'))
                  : ElevatedButton(onPressed: signIn, child: Text('Sign In')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
