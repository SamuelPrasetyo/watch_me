class Movie {
  String title;
  String releaseDate;
  String duration;
  String genre;
  String ageRating;
  String scoreRating;
  String description;
  String imagePoster;
  List<String> imageCollections;
  String trailer;

  Movie({
    required this.title,
    required this.releaseDate,
    required this.duration,
    required this.genre,
    required this.ageRating,
    required this.scoreRating,
    required this.description,
    required this.imagePoster,
    required this.imageCollections,
    required this.trailer,
  });
}

var movieList = [
  Movie(
    title: 'Venom: The Last Dance',
    releaseDate: '23/10/2024',
    duration: '1h 50m',
    genre: 'Action, Fiction, Adventure',
    ageRating: '13+',
    scoreRating: '6.2/10',
    description: 'Eddie Brock dan Venom harus mengambil keputusan yang menghancurkan saat mereka dikejar oleh seorang militer misterius dan monster alien dari dunia asal Venom.',
    imagePoster: 'images/venom-the-last-dance.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg',
      'https://image.tmdb.org/t/p/original/uATUAnkZBPGVrHHTt64dV465mt6.jpg',
      'https://image.tmdb.org/t/p/original/jIGuhXVw7adpOBQgscmUjOz5BYc.jpg',
    ],
    trailer: '__2bjWbetsA',
  ),
  Movie(
    title: 'Moana 2',
    releaseDate: '27/11/2024',
    duration: '1h 40m',
    genre: 'Animation, Adventure, Family, Comedy',
    ageRating: 'SU',
    scoreRating: '7.1/10',
    description: 'Setelah menerima panggilan tak terduga dari leluhurnya yang mencari jalan, Moana harus melakukan perjalanan ke lautan jauh di Oceania dan ke perairan berbahaya yang telah lama hilang untuk sebuah petualangan yang belum pernah ia hadapi.',
    imagePoster: 'images/moana2.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/tElnmtQ6yz1PjN1kePNl8yMSb59.jpg',
      'https://image.tmdb.org/t/p/original/kPB0IcdCQdw5UhFyHHJuPVZya70.jpg',
      'https://image.tmdb.org/t/p/original/xrCYSgZ7hMF7CkDl3MWhRg8eR6q.jpg',
    ],
    trailer: 'hDZ7y8RP5HE',
  ),
  Movie(
    title: 'Deadpool & Wolverine',
    releaseDate: '24/07/2024',
    duration: '2h 8m',
    genre: 'Action, Comedy, Fiction',
    ageRating: '17+',
    scoreRating: '7.7/10',
    description: 'Deadpool ditawari tempat di Marvel Cinematic Universe oleh Time Variance Authority, namun malah merekrut varian Wolverine untuk menyelamatkan alam semesta dari kepunahan.',
    imagePoster: 'images/deadpool-and-wolverine.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/dvBCdCohwWbsP5qAaglOXagDMtk.jpg',
      'https://image.tmdb.org/t/p/original/9l1eZiJHmhr5jIlthMdJN5WYoff.jpg',
      'https://image.tmdb.org/t/p/original/tuxt193U1kovduUDK4fuzFoh5Tt.jpg',
    ],
    trailer: '73_1biulkYk',
  ),
  Movie(
    title: 'Inside Out 2',
    releaseDate: '11/06/2024',
    duration: '1h 37m',
    genre: 'Animation, Adventure, Comedy, Drama, Family',
    ageRating: 'SU',
    scoreRating: '7.6/10',
    description: 'Sekuel yang menampilkan Riley memasuki masa pubertas dan sebagai hasilnya mengalami emosi baru yang lebih kompleks. Saat Riley mencoba beradaptasi dengan masa remajanya, emosi lamanya mencoba beradaptasi dengan kemungkinan tergantikan.',
    imagePoster: 'images/inside-out2.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/p5ozvmdgsmbWe0H8Xk7Rc8SCwAB.jpg',
      'https://image.tmdb.org/t/p/original/stKGOm8UyhuLPR9sZLjs5AkmncA.jpg',
      'https://image.tmdb.org/t/p/original/uVu2fBc114un7F1GD76RBouWyBP.jpg',
    ],
    trailer: 'LEjhY15eCx0',
  ),
  Movie(
    title: 'Despicable Me 4',
    releaseDate: '03/07/2024',
    duration: '1h 34m',
    genre: 'Animation, Family, Comedy, Action',
    ageRating: 'SU',
    scoreRating: '6.2/10',
    description: 'Gru, Lucy, Margo, Edith, dan Agnes menyambut anggota baru di keluarga, Gru Jr., yang berniat menyiksa ayahnya. Gru menghadapi musuh baru dalam diri Maxime Le Mal dan pacarnya Valentina, dan keluarganya terpaksa melarikan diri.',
    imagePoster: 'images/despicable-me4.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/izvpS5dMnTQDLxM45u2smPhEDA0.jpg',
      'https://image.tmdb.org/t/p/original/fDmuPREB3yTrelyYugguEine5Y1.jpg',
      'https://image.tmdb.org/t/p/original/lOv9qYklDC8mpMvg1WI0sQsmfTk.jpg',
    ],
    trailer: 'qQlr9-rF32A',
  ),
  Movie(
    title: 'Kung Fu Panda 4',
    releaseDate: '06/03/2024',
    duration: '1h 34m',
    genre: 'Animation, Family, Fantasy, Action',
    ageRating: 'SU',
    scoreRating: '6.3/10',
    description: 'Setelah Po ditunjuk untuk menjadi Pemimpin Spiritual Lembah Damai, dia perlu menemukan dan melatih Prajurit Naga baru, sementara seorang penyihir jahat berencana memanggil kembali semua penjahat ulung yang telah dikalahkan Po ke alam roh.',
    imagePoster: 'images/kungfu-panda4.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/kYgQzzjNis5jJalYtIHgrom0gOx.jpg',
      'https://image.tmdb.org/t/p/original/pKcjqEisnlZyQu0bQrCSFS9RlXA.jpg',
      'https://image.tmdb.org/t/p/original/vdPjV35lrFVg2Itqn4FXONqhyn3.jpg',
    ],
    trailer: '_inKs4eeHiI',
  ),
  Movie(
    title: 'Spider-Man: No Way Home',
    releaseDate: '15/12/2021',
    duration: '2h 28m',
    genre: 'Action, Adventure, Fiction Stories',
    ageRating: 'SU',
    scoreRating: '8.2/10',
    description: 'Dengan identitas Spider-Man yang kini terungkap, Peter meminta bantuan Dokter Strange. Saat mantranya bermasalah, musuh berbahaya dari dunia lain mulai bermunculan.',
    imagePoster: 'images/spiderman-nowayhome.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg',
      'https://image.tmdb.org/t/p/original/VlHt27nCqOuTnuX6bku8QZapzO.jpg',
      'https://image.tmdb.org/t/p/original/Bwh7Lol5k3hSqYOtqXWxbbJVMx.jpg',
    ],
    trailer: 'JfVOs4VSpmA',
  ),
  Movie(
    title: 'Sonic the Hedgehog 2',
    releaseDate: '20/12/2024',
    duration: '2h 2m',
    genre: 'Adventure, Comedy, Family, Fiction Stories',
    ageRating: 'SU',
    scoreRating: '6.5/10',
    description: 'Ketika Dr. Robotnik kembali dengan mitra barunya, Knuckles, untuk mencari zamrud yang memiliki kekuatan untuk menghancurkan peradaban, Sonic bekerja sama dengan sahabat karibnya, Tails, dalam perjalanan melintasi dunia untuk menemukan zamrud terlebih dahulu.',
    imagePoster: 'images/sonic-the-hedgehog2.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/aXsKvHmTfMPG3WWjJTPjlgKdwP4.jpg',
      'https://image.tmdb.org/t/p/original/8wwXPG22aNMpPGuXnfm3galoxbI.jpg',
      'https://image.tmdb.org/t/p/original/vBykjPbi6ewCKSVJBzSBmP07b0Q.jpg',
    ],
    trailer: 'G5kzUpWAusI',
  ),
  Movie(
    title: 'Pacific Rim',
    releaseDate: '12/07/2013',
    duration: '2h 11m',
    genre: 'Action, Fiction, Adventure',
    ageRating: '13+',
    scoreRating: '6.9/10',
    description: 'Saat perang antara umat manusia dan makhluk laut mengerikan terus terjadi, seorang mantan pilot dan seorang peserta pelatihan dipasangkan untuk mengemudikan senjata khusus yang tampaknya sudah ketinggalan zaman dalam upaya putus asa untuk menyelamatkan dunia dari kiamat.',
    imagePoster: 'images/pacific-rim.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/ig7qUy7drkEFZNCK7gi0hMn1WMN.jpg',
      'https://image.tmdb.org/t/p/original/58ALYpeuh6WIUfhL2pNlN9ccZsB.jpg',
      'https://image.tmdb.org/t/p/original/9X7Im1YuBhyHYVD8r7CAONPJR5k.jpg',
    ],
    trailer: '5guMumPFBag',
  ),
  Movie(
    title: 'Avengers: Endgame',
    releaseDate: '24/04/2019',
    duration: '3h 1m',
    genre: 'Adventure, Fiction, Action',
    ageRating: '13+',
    scoreRating: '8.4/10',
    description: 'Terdampar di luar angkasa tanpa persediaan makanan dan minuman, Tony Stark berusaha mengirim pesan untuk Pepper Potts dimana persediaan oksigen mulai menipis. Sementara itu para Avengers yang tersisa harus menemukan cara untuk mengembalikan 50% mahluk di seluruh dunia yang telah dilenyapkan oleh Thanos.',
    imagePoster: 'images/avengers-endgame.jpg',
    imageCollections: [
      'https://image.tmdb.org/t/p/original/wMFad1v8SwyVvrKXmsIkLhSxCEC.jpg',
      'https://image.tmdb.org/t/p/original/h9q0ozwMWy7CK5U7FSZsMVtbsCQ.jpg',
      'https://image.tmdb.org/t/p/original/91iy9F1JOG1dvM6M6JNYgvScZpK.jpg',
    ],
    trailer: 'TcMBFSGVi1c',
  ),

];
