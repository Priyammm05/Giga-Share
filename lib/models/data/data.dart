class SliderModel {
  String? imageAssetPath;
  String? title;
  String? desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath!;
  }

  String getTitle() {
    return title!;
  }

  String getDesc() {
    return desc!;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = SliderModel();

  //1
  sliderModel.setDesc(
      "Create a new account or sign-in with authentic keys for decentralized storing experience.");
  sliderModel.setTitle("Welcome");
  sliderModel.setImageAssetPath("images/Web3.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setDesc(
      "Add any image, video or file to the IPFS and share the link or QR where the file is addressed.");
  sliderModel.setTitle("Upload to IPFS");
  sliderModel.setImageAssetPath("images/IPFS_img.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setDesc(
      "Just scan the QR which is shared with you and get the address of the file in a single click.");
  sliderModel.setTitle("Receive");
  sliderModel.setImageAssetPath("images/receive.jpg");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}
