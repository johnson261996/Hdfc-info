
import 'dart:convert';



class HdfcModel {
  HdfcModel({
    required this.id,
    required this.security,
    required this.industryId,
    required this.industry,
    required this.sectorId,
    required  this.sector,
    required  this.mcap,
    required  this.ev,
    required  this.evDateEnd,
    required  this.bookNavPerShare,
    required  this.ttmpe,
    required this.ttmYearEnd,
    required this.welcomeYield,
    required this.yearEnd,
    required  this.sectorSlug,
    required  this.industrySlug,
    required  this.securitySlug,
    required  this.pegRatio});

  int id;
  String security;
  int industryId;
  String industry;
  int sectorId;
  String sector;
  double mcap;
  String ev;
  String evDateEnd;
  double bookNavPerShare;
  double ttmpe;
  int ttmYearEnd;
  double welcomeYield;
  int yearEnd;
  String sectorSlug;
  String industrySlug;
  String securitySlug;
  double pegRatio;


  factory HdfcModel.fromJson(Map<String, dynamic> json) => HdfcModel(
    id: json["ID"],
    security: json["Security"],
    industryId: json["IndustryID"],
    industry: json["Industry"],
    sectorId: json["SectorID"],
    sector: json["Sector"],
    mcap: json["MCAP"],
    ev: json["EV"] ?? 'null',
    evDateEnd: json["EVDateEnd"] ?? 'null',
    bookNavPerShare: json["BookNavPerShare"],
    ttmpe: json["TTMPE"],
    ttmYearEnd: json["TTMYearEnd"],
    welcomeYield: json["Yield"],
    yearEnd: json["YearEnd"],
    sectorSlug: json["SectorSlug"],
    industrySlug: json["IndustrySlug"],
    securitySlug: json["SecuritySlug"],
    pegRatio: json["PEGRatio"],
      );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Security": security,
    "IndustryID": industryId,
    "Industry": industry,
    "SectorID": sectorId,
    "Sector": sector,
    "MCAP": mcap,
    "EV": ev,
    "EVDateEnd": evDateEnd,
    "BookNavPerShare": bookNavPerShare,
    "TTMPE": ttmpe,
    "TTMYearEnd": ttmYearEnd,
    "Yield": welcomeYield,
    "YearEnd": yearEnd,
    "SectorSlug": sectorSlug,
    "IndustrySlug": industrySlug,
    "SecuritySlug": securitySlug,
    "PEGRatio": pegRatio,
      };
}



