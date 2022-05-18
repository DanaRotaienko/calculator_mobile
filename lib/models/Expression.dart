class Expression {
  final int? id;
  final String calculation;

  Expression(
      { this.id,
        required this.calculation,});

  factory Expression.fromMap(Map<String, dynamic> json) => Expression(
    id: json['id'],
    calculation: json['calculation'],
  );

  Map<String, dynamic> toMap() {
    return {
      'id':id,
      'calculation': calculation};
  }
}
