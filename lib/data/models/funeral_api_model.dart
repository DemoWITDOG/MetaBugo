import 'package:xml/xml.dart';

class FuneralApiModel {
  String? ctpv;
  String? fcltNm;
  String? addr;
  String? telno;
  String? tpkct;
  String? gubun;
  String? mtaCnt;
  String? ehrCnt;
  String? pageNo;
  String? numOfRows;
  String? apiType;
  String? serviceKey;

  FuneralApiModel({
    this.ctpv,
    this.fcltNm,
    this.addr,
    this.telno,
    this.tpkct,
    this.gubun,
    this.mtaCnt,
    this.ehrCnt,
    this.apiType,
    this.numOfRows,
    this.pageNo,
    this.serviceKey,
  });

  // 수정: 리스트 대신 단일 인스턴스를 반환하는 팩토리 메서드 정의
  factory FuneralApiModel.fromXml(XmlElement xml) {
    return FuneralApiModel(
      ctpv: XmlUtils.searchResult(xml, 'ctpv'),
      fcltNm: XmlUtils.searchResult(xml, 'fcltNm'),
      addr: XmlUtils.searchResult(xml, 'addr'),
      telno: XmlUtils.searchResult(xml, 'telno'),
      tpkct: XmlUtils.searchResult(xml, 'tpkct'),
      gubun: XmlUtils.searchResult(xml, 'gubun'),
      mtaCnt: XmlUtils.searchResult(xml, 'mtaCnt'),
      ehrCnt: XmlUtils.searchResult(xml, 'ehrCnt'),
      apiType: XmlUtils.searchResult(xml, 'apiType'),
      numOfRows: XmlUtils.searchResult(xml, 'numOfRows'),
      pageNo: XmlUtils.searchResult(xml, 'pageNo'),
      serviceKey: XmlUtils.searchResult(xml, 'serviceKey'),
    );
  }
}

class XmlUtils {
  static String searchResult(XmlElement xml, String key) {
    return xml.findAllElements(key).map((e) => e.innerText).isEmpty
        ? ""
        : xml.findAllElements(key).map((e) => e.innerText).first;
  }
}
