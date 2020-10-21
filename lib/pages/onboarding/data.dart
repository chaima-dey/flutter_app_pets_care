import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Notre application vous permet la gestion du calendrier de votre animal en notant ses rendez-vous chez le vétérinaire etc ...");
  sliderModel.setTitle("Gérer le calendrier de votre animal");
  sliderModel.setImageAssetPath("assets/veterinary.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Envie d'adopter un animal de compagnie notre application est faite pour vous : choisissez la race, le sexe du votre annimal ....");
  sliderModel.setTitle("Adopter");
  sliderModel.setImageAssetPath("assets/adoption.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("L'application vous permet grace à la communité d'avoir une chance de trouver votre animal perdu.");
  sliderModel.setTitle("Trouver votre animal de compagnie");
  sliderModel.setImageAssetPath("assets/lost.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}