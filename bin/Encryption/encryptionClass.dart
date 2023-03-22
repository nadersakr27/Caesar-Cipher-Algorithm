
class FirstEncryption{
  final String type = 'firstEncryption';
  final Runes data;
  const FirstEncryption({required this.data});
}
class Encryption{

  static FirstEncryption FirstEncode(String text){
    Runes data= text.runes;
    // for(int i = 0 ; i < text.length;i++) {
    //   data[i]++;
    // }
    return FirstEncryption(data: data);
  }


  static String decodeFirstEncryption(FirstEncryption encryption){
   late final String data ;
    Runes encryptionRuns= encryption.data;
    // for(int i=0 ; i<encryptionList.length;i++ ){
    //   encryptionList[i]--;
    // }
    data = encryptionRuns.string;
    return data;
  }


}