class LoginService{
    //static final LoginService loginService
    factory LoginService(){
      return LoginService();
    }


    Future login()async{
      
      Future.delayed(Duration(seconds: 3));
      return;

    }
}