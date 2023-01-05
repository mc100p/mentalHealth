class ClientData {
  late String imgUrl;
  late String firstName;
  late String lastName;
  late int age;
  late String illness;
  late bool prescription;
  late bool completed;
  late String date;
  late List complaints;
  late DateTime dob;
  late String gender;
  late String? therapistNotes;

  ClientData({
    required this.imgUrl,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.illness,
    required this.prescription,
    required this.completed,
    required this.date,
    required this.complaints,
    required this.dob,
    required this.gender,
    this.therapistNotes,
  });

  ClientData.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'] == null ? null : json['imgUrl'];
    firstName = json['firstName'] == null ? null : json['firstName'];
    lastName = json['lastName'] == null ? null : json['lastName'];
    age = json['age'] == null ? null : json['age'];
    illness = json['illness'] == null ? null : json['illness'];
    prescription = json['prescription'] == null ? null : json['prescription'];
    completed = json[false];
    date = json['date'] == null ? null : json['date'];
    complaints = json['complaints'] == null ? null : json['complaints'];
    dob = DateTime.parse(json["dob"]);
    gender = json['gender'] == null ? null : json['gender'];
    therapistNotes =
        json['therapistNotes'] == null ? null : json['therapistNotes'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imgUrl'] = imgUrl;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['age'] = age;
    data['illness'] = illness;
    data['prescription'] = prescription;
    data['date'] = date;
    data['complaints'] = complaints;
    data['dob'] = dob.toIso8601String();
    data['gender'] = gender;
    data['therapist'] = therapistNotes;
    return data;
  }
}

final sarahMiller = ClientData(
  imgUrl: "images/sarahMiller.jpeg",
  firstName: "Sarah",
  lastName: "Miller",
  age: 25,
  illness: "Depression",
  prescription: true,
  completed: true,
  date: "11 Feb 2021 09:00 - 09:30",
  complaints: ["complaints", "complaints"],
  dob: DateTime(2017, 9, 7, 17, 30),
  gender: "Female",
  therapistNotes: null,
);

final jillRobbins = ClientData(
  imgUrl: "images/jillRobbins.jpeg",
  firstName: "Jill",
  lastName: "Robbins",
  age: 23,
  illness: "ADHD",
  prescription: false,
  completed: false,
  date: "11 Feb 2021 12:00 - 13:30",
  complaints: ["complaints", "complaints"],
  dob: DateTime(2017, 9, 7, 17, 30),
  gender: "Female",
  therapistNotes: null,
);

final tomStuart = ClientData(
    imgUrl: "images/tomStuart.jpeg",
    firstName: "Tom",
    lastName: "Stuart",
    age: 25,
    illness: "Depression",
    prescription: true,
    completed: false,
    date: "11 Feb 2021 16:00 - 17:00",
    complaints: [
      "bad mood",
      "insomnia",
      "apathy",
      "anger",
      "mood swings",
      "panic attacks"
    ],
    dob: DateTime(2017, 9, 7, 17, 30),
    gender: "Male",
    therapistNotes:
        "Tom showed all nine symptoms of major depression for at least two weeks: depressed mood, weight loss, insomnia, restlessness, loss of energy, extreme guilt");

List<ClientData> clients = [sarahMiller, jillRobbins, tomStuart];
