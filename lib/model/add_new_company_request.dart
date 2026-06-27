import 'package:json_annotation/json_annotation.dart';

part 'add_new_company_request.g.dart';

@JsonSerializable(explicitToJson: true)
class AddNewCompanyRequest {
  @JsonKey(name: 'company_name')
  final String companyName;

  @JsonKey(name: 'pan_number')
  final String panNumber;

  @JsonKey(name: 'created_by_user')
  final String createdByUser;

  AddNewCompanyRequest({
    this.companyName = "",
    this.panNumber = "",
    this.createdByUser = "",
  });

  factory AddNewCompanyRequest.fromJson(Map<String, dynamic> json) =>
      _$AddNewCompanyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddNewCompanyRequestToJson(this);
}
