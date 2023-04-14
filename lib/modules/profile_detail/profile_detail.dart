import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/models/user.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key, required this.user});

  final User user;

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _profilePhotoController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  bool isVisibile = true;

  @override
  void initState() {
    if (widget.user.name != "") {
      _nameController.text = widget.user.name;
    }
    if (widget.user.email != "") {
      _emailController.text = widget.user.email;
    }
    if (widget.user.username != "") {
      _usernameController.text = widget.user.username;
    }
    if (widget.user.phoneNumber != "") {
      _phoneNumberController.text = widget.user.phoneNumber!;
    }
    if (widget.user.profilePhoto != "") {
      _profilePhotoController.text = widget.user.profilePhoto!;
    }

    super.initState();

    @override
    void dispose() {
      _nameController.dispose();
      _passwordController.dispose();
      _usernameController.dispose();
      _emailController.dispose();
      _profilePhotoController.dispose();
      _phoneNumberController.dispose();

      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                // GestureDetector(
                //   onTap: () {
                //     GoRouter.of(context).pop();
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     child: Icon(Icons.chevron_left_outlined),
                //   ),
                // ),
                // SizedBox(
                //   width: 8,
                // ),
                // Text(
                //   "Profil Detail",
                //   style: TextStyle(fontWeight: FontWeight.bold),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.idntimes.com/content-images/community/2020/09/104967619-2451390651819718-4934284928595035666-n-2fc82b7325949c7d003c1c58e17d48b7.jpg"),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "ex: Mochamad Riefky R S",
                        label: const Text("Nama Lengkap"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Nama wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: _profilePhotoController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "ex: link or file .jpg, .png",
                        label: const Text("profile"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Phone Number wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "ex: 08123141565",
                        label: const Text("Phone Number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Phone Number wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "ex: Riefky",
                        label: const Text("Username"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Username wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "ex: Riefky@email.com",
                        label: const Text("Email"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "email wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      obscureText: isVisibile,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        isDense: true,
                        label: const Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisibile = !isVisibile;
                            });
                          },
                          icon: Icon(
                            isVisibile == true
                                ? Icons.visibility_rounded
                                : Icons.visibility_off_rounded,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Password wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Column(
                      children: [
                        Text("Sukses"),
                        Text("Anda Berhasi Merubah Profil"),
                      ],
                    ),
                  ),
                );
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "SIMPAN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
