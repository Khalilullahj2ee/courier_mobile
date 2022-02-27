class TrackingOrder{
  int id;
  String trackingNum;
  String senderName;
  String senderEmail;
  String senderPhone;
  String senderAddress;
  String orderDate;
  String docType;
  String contents;
  String weight;
  int quantity;
  int amount;
  String receiveName;
  String receiveEmail;
  String receiverPhon;
  String receiverAddress;
  String status;

//<editor-fold desc="Data Methods">

  TrackingOrder({
    this.id = 0,
    this.trackingNum="",
    this.senderName="",
    this.senderEmail="",
    this.senderPhone="",
    this.senderAddress="",
    this.orderDate="",
    this.docType="",
    this.contents="",
    this.weight="",
    this.quantity=0,
    this.amount=0,
    this.receiveName="",
    this.receiveEmail="",
    this.receiverPhon="",
    this.receiverAddress="",
    this.status="",
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrackingOrder &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          trackingNum == other.trackingNum &&
          senderName == other.senderName &&
          senderEmail == other.senderEmail &&
          senderPhone == other.senderPhone &&
          senderAddress == other.senderAddress &&
          orderDate == other.orderDate &&
          docType == other.docType &&
          contents == other.contents &&
          weight == other.weight &&
          quantity == other.quantity &&
          amount == other.amount &&
          receiveName == other.receiveName &&
          receiveEmail == other.receiveEmail &&
          receiverPhon == other.receiverPhon &&
          receiverAddress == other.receiverAddress &&
          status == other.status);

  @override
  int get hashCode =>
      id.hashCode ^
      trackingNum.hashCode ^
      senderName.hashCode ^
      senderEmail.hashCode ^
      senderPhone.hashCode ^
      senderAddress.hashCode ^
      orderDate.hashCode ^
      docType.hashCode ^
      contents.hashCode ^
      weight.hashCode ^
      quantity.hashCode ^
      amount.hashCode ^
      receiveName.hashCode ^
      receiveEmail.hashCode ^
      receiverPhon.hashCode ^
      receiverAddress.hashCode ^
      status.hashCode;

  @override
  String toString() {
    return 'TrackingOrder{' +
        ' id: $id,' +
        ' trackingNum: $trackingNum,' +
        ' senderName: $senderName,' +
        ' senderEmail: $senderEmail,' +
        ' senderPhone: $senderPhone,' +
        ' senderAddress: $senderAddress,' +
        ' orderDate: $orderDate,' +
        ' docType: $docType,' +
        ' contents: $contents,' +
        ' weight: $weight,' +
        ' quantity: $quantity,' +
        ' amount: $amount,' +
        ' receiveName: $receiveName,' +
        ' receiveEmail: $receiveEmail,' +
        ' receiverPhon: $receiverPhon,' +
        ' receiverAddress: $receiverAddress,' +
        ' status: $status,' +
        '}';
  }

  TrackingOrder copyWith({
    int? id,
    String? trackingNum,
    String? senderName,
    String? senderEmail,
    String? senderPhone,
    String? senderAddress,
    String? orderDate,
    String? docType,
    String? contents,
    String? weight,
    int? quantity,
    int? amount,
    String? receiveName,
    String? receiveEmail,
    String? receiverPhon,
    String? receiverAddress,
    String? status,
  }) {
    return TrackingOrder(
      id: id ?? this.id,
      trackingNum: trackingNum ?? this.trackingNum,
      senderName: senderName ?? this.senderName,
      senderEmail: senderEmail ?? this.senderEmail,
      senderPhone: senderPhone ?? this.senderPhone,
      senderAddress: senderAddress ?? this.senderAddress,
      orderDate: orderDate ?? this.orderDate,
      docType: docType ?? this.docType,
      contents: contents ?? this.contents,
      weight: weight ?? this.weight,
      quantity: quantity ?? this.quantity,
      amount: amount ?? this.amount,
      receiveName: receiveName ?? this.receiveName,
      receiveEmail: receiveEmail ?? this.receiveEmail,
      receiverPhon: receiverPhon ?? this.receiverPhon,
      receiverAddress: receiverAddress ?? this.receiverAddress,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'trackingNum': this.trackingNum,
      'senderName': this.senderName,
      'senderEmail': this.senderEmail,
      'senderPhone': this.senderPhone,
      'senderAddress': this.senderAddress,
      'orderDate': this.orderDate,
      'docType': this.docType,
      'contents': this.contents,
      'weight': this.weight,
      'quantity': this.quantity,
      'amount': this.amount,
      'receiveName': this.receiveName,
      'receiveEmail': this.receiveEmail,
      'receiverPhon': this.receiverPhon,
      'receiverAddress': this.receiverAddress,
      'status': this.status,
    };
  }

  factory TrackingOrder.fromMap(Map<String, dynamic> map) {
    return TrackingOrder(
      id: map['id'] as int,
      trackingNum: map['trackingNum'] as String,
      senderName: map['senderName'] as String,
      senderEmail: map['senderEmail'] as String,
      senderPhone: map['senderPhone'] as String,
      senderAddress: map['senderAddress'] as String,
      orderDate: map['orderDate'] as String,
      docType: map['docType'] as String,
      contents: map['contents'] as String,
      weight: map['weight'] as String,
      quantity: map['quantity'] as int,
      amount: map['amount'] as int,
      receiveName: map['receiveName'] as String,
      receiveEmail: map['receiveEmail'] as String,
      receiverPhon: map['receiverPhon'] as String,
      receiverAddress: map['receiverAddress'] as String,
      status: map['status'] as String,
    );
  }


//</editor-fold>
}