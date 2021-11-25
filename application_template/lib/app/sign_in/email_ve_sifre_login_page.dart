import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

enum FormType { Register, LogIn }

class EmailveSifreLoginPage extends StatefulWidget {
  @override
  _EmailveSifreLoginPageState createState() => _EmailveSifreLoginPageState();
}

class _EmailveSifreLoginPageState extends State<EmailveSifreLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email ve Şifre Login Page"),
      ),
      body: Center(
        child: Text("Amail giriş sayfası"),
      ),
    );
  }
  /*
  String _email, _sifre;
  String _butonText, _linkText;
  var _formType = FormType.LogIn;
  final _formKey = GlobalKey<FormState>();

  void _formSubmit() async {
    _formKey.currentState.save();
    debugPrint("email : " + _email + "şifre: " + _sifre);
    final _userModel = Provider.of<UserModel>(context,
        listen:
        false); //burayı user modelimize erişmej için yapıyoruz //bunu yapma amacımız main de ağacmızın içine koyduğumuz nesneyi elde etmek

    if (_formType == FormType.LogIn) {
      try {
        User _girisYapanUser =
        await _userModel.signInWithEmailandPassword(_email, _sifre);
        if (_girisYapanUser != null)
          print("Oturm açan user id: " + _girisYapanUser.userID.toString());
      } on PlatformException catch (e) {
        debugPrint("Widget oturum açma hata yakalandı: " + e.code.toString());
        PlatformDuyarliAlertDialog(
          baslik: "Oturum Açmada Hata",
          icerik: Hatalar.goster(e.code),
          anaButonYazisi: "Tamam",
        ).goster(context);
      }
    } else {
      try {
        User _olusturulanUser =
        await _userModel.createUserWithEmailandPassword(_email, _sifre);
        if (_olusturulanUser != null)
          print("Oturm açan user id: " + _olusturulanUser.userID.toString());
      } on PlatformException catch (e) {
        PlatformDuyarliAlertDialog(
          baslik: "Kullanıcı Oluşturma Hata",
          icerik: Hatalar.goster(e.code),
          anaButonYazisi: "Tamam",
        ).goster(context);
      }
    }
  }


  void _degistir() {
    setState(() {
      _formType =
      _formType == FormType.LogIn ? FormType.Register : FormType.LogIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    _butonText = _formType == FormType.LogIn ? "Giriş Yap " : "Kayıt Ol";
    _linkText = _formType == FormType.LogIn
        ? "Hesabınız Yok Mu? Kayıt Olun"
        : "Hesabınız Var Mı? Giriş Yapın";

    final _userModel = Provider.of<UserModel>(context);

    if (_userModel.user != null) {
      Future.delayed(Duration(milliseconds: 1), () {
        Navigator.of(context).popUntil(ModalRoute.withName("/"));
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Giriş Kayıt"),
        ),
        body: _userModel.state == ViewState.Idle
            ? SingleChildScrollView(
          //elemanlar ekrana sığmazsa aşağı yukarı gitmemizi sağlıyor
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    initialValue: "ersin@ersin.com",
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorText: _userModel.emailHataMesaji != null
                          ? _userModel.emailHataMesaji
                          : null,
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (String girilenEmail) {
                      _email = girilenEmail;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: "password",
                    obscureText:
                    true, //şifre alanının gizli olmasını sağlıyor
                    decoration: InputDecoration(
                      errorText: _userModel.sifreHataMesaji != null
                          ? _userModel.sifreHataMesaji
                          : null,
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Sifre",
                      labelText: "Sifre",
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (String girilenSifre) {
                      _sifre = girilenSifre;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SocialLoginButton(
                    butonText: _butonText,
                    butonColor: Theme.of(context).primaryColor,
                    radius: 10,
                    onPressed: () =>
                        _formSubmit(), //() => bu bu on prest tetiklendiği an bu _formSubmit(context) fonksiyonunu çalıştır demek
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () => _degistir(),
                    child: Text(_linkText),
                  ),
                ],
              ),
            ),
          ),
        )
            : Center(
          child: CircularProgressIndicator(),
        ));
  }

  */
}
