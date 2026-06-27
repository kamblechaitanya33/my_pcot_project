// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_new_company_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNewCompanyRequest _$AddNewCompanyRequestFromJson(
  Map<String, dynamic> json,
) => AddNewCompanyRequest(
  companyName: json['company_name'] as String? ?? "",
  panNumber: json['pan_number'] as String? ?? "",
  createdByUser: json['created_by_user'] as String? ?? "",
);

Map<String, dynamic> _$AddNewCompanyRequestToJson(
  AddNewCompanyRequest instance,
) => <String, dynamic>{
  'company_name': instance.companyName,
  'pan_number': instance.panNumber,
  'created_by_user': instance.createdByUser,
};
