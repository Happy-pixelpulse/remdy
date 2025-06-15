class AppConst{
  static String googleSignIn = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
  static String patientsLocation = 'http://184.169.211.131:3000/api/v1/user/patient-location';
  static String neareByDoctor = 'http://184.169.211.131:3000/api/v1/homepage/get-all-near-by-doctors';
  static String doctorsByPostalCode = 'http://184.169.211.131:3000/api/v1/homepage/get-doctors-by-postal-code';
  static String wishListDoctor = 'http://184.169.211.131:3000/api/v1/user/addOrRemoveWishlistDoctor';
  static String approvedDoctor = 'http://184.169.211.131:3000/api/v1/user/approved-doctors';
  static String doctorById = 'http://184.169.211.131:3000/api/v1/homepage/get-doctors/:doctor_id';
  static String doctorByReviews = 'http://184.169.211.131:3000/api/v1/homepage/get-doctors/:doctor_id?desc=true';
  static String neareByHospital = 'http://184.169.211.131:3000/api/v1//hospitals/get-all-near-by-hospitals';
  static String favoriteDoctor = 'http://184.169.211.131:3000/api/v1/user/wishlist?userId=19&type=DOCTOR';
  static String userProFile = 'http://184.169.211.131:3000/api/v1/user/profile?user_id=1';
  static String patientsList = 'http://184.169.211.131:3000/api/v1/user/create-patient-request';
}