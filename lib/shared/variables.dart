import 'package:flutter/material.dart';

TextEditingController from = TextEditingController();
TextEditingController to = TextEditingController();
TextEditingController depart = TextEditingController();
int travellers = 1;
List<Map> db = [
  {'from': 'korea','to':'Aswan' ,'date':'2022-12-14 23:17:54.652181','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,k,kkkkkkkkkkkkkkkkkkk'},
  {'from': 'Alexanddriaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','to':'Aswan' ,'date':'2025-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswannnnnnnnnnnnnnnnnnnnnnnnn' ,'date':'2020-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2020-01-02 07:12:50.000','price':'250','gate':'Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2020-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2020-01-02 07:12:50.000','price':'250000000000000000000000000000000000','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2020-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2000-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2000-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2000-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
  {'from': 'Alexanddria','to':'Aswan' ,'date':'2000-01-02 07:12:50.000','price':'250','gate':'A','dur':'1hr-50min','seat':'A1,A2'},
];
var latitude =31.2087013751;
var longitude=29.923561611;
var initial_trian_location_long=31.233334;
var initial_trian_location_lat=30.033333;