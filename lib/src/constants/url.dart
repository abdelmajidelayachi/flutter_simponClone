
class Url{
  static String baseUrl = 'http://10.0.2.2:3000';

  static String loginUrl(String email, String password) => '$baseUrl/users?email=$email&password=$password';
  static String users = '$baseUrl/users';
  static String usersByPromoId(int id) => '$baseUrl/users?promo_id=$id';
  static String usersById(String id) => '$baseUrl/users/$id';

  static String briefsByPromoId(int promoId) => '$baseUrl/briefs?promo_id=$promoId';

}