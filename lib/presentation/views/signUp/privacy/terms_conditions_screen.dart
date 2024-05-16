import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          '이용약관 동의',
          style: TextStyle(
            fontSize: MediaRes.fontSize20,
            fontWeight: MediaRes.medium,
            fontFamily: MediaRes.fontPretendard,
            color: MediaRes.blackColor,
          ),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansionTile(
                title: Text(
                  '메타부고서비스 이용약관',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '본 이용약관(이하 ‘약관’이라 함)은 세연시스템즈(주)(이하 ‘회사)가 이용고객(이하 ‘회원’)간에 회사가 제공하는 온라인상의 인터넷 서비스(이하 ‘서비스’)의 가입조건 및 이용에 관한 제반사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제1조 목적',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '본 이용약관(이하 ‘약관’이라 함)은 세연시스템즈(주)(이하 ‘회사)가 이용고객(이하 ‘회원’)간에 회사가 제공하는 온라인상의 인터넷 서비스(이하 ‘서비스’)의 가입조건 및 이용에 관한 제반사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제2조 정의',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '이 약관에서 사용하는 용어의 정의는 다음과 같습니다.\n'
                      '(1) ‘서비스’라 함은 구현되는 단말기(PC, 모니터, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 ‘이용자’가 이용할 수 있는 메타부고의 관련 제반 서비스를 의미합니다.\n'
                      '(2) ‘회원’이라 함은 ‘회사’에 개인정보를 제공하여 회원등록을 한 자로서, 회사의 서비스에 자유롭게 접속하여 정보를 지속적으로 제공받을 수 있거나 사이트가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.\n'
                      '(3) ‘비회원’이라 함은 ‘회원’으로 가입하지 않고 ‘회사’가 제공하는 서비스를 이용하는 자를 말합니다.\n'
                      '(4) ‘이용자’라 함은 회사의 서비스를 이용하는 자를 말하며, 회원과 비회원을 모두 포함합니다.\n'
                      '(5) ‘게시물’이라 함은 ‘이용자’가 서비스를 이용함에 있어 서비스 상에 게시한 부호 • 문자 • 음성 • 음향 • 화상 • 동영상 • 부고장 등의 정보 형태의 부고장, 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제3조 약관의 게시와 개정',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회사’는 이 약관의 내용을 ‘이용자’가 쉽게 알 수 있도록 ‘서비스’ 초기화면에 게시합니다.\n'
                          '2. ‘회사’는 ‘약관의 규제에 관한 법률’ ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’) 등 관련 법은 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.\n'
                          '3. ‘회사’가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 제1항의 방식에 따라 그 개정약관의 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, ‘이용자’에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 ‘회사’는 제1항의 방식에 따라 개정약관 내용을 ‘이용자’가 알기 쉽도록 표시합니다.\n'
                          '4. ‘회원’은 변경된 약관에 동의하지 않을 권리가 있으며, 변경된 약관에 동의하지 않을 경우에는 서비스 이용을 중단하고 탈퇴를 요청할 수 있습니다. 다만, ‘이용자’가 제3항의 방법 등으로 ‘회사’가 별도 고지한 약관 개정 공지 기간 내에 ‘회사’에 개정 약관에 동의하지 않는다는 명시적인 의사표시를 하지 않는 경우 변경된 약관에 동의한 것으로 간주합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제4조 관련법령과의 관계',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '이 약관에서 정하지 않은 사항은 전기통신사업법, 전자거래기본법, 정보통신망법, 전자상거래 등에서의 소비자보호에 관한 법률, 개인정보보호법 등 관련 법령의 규정과 일반적인 상관례에 따릅니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제5조 이용계약의 체결',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. 이용계약은 ‘회원’이 되고자 하는 자(이하 ‘가입신청자’)가 약관의 내용에 대하여 동의를 한 다음 회원가입 신청을 하고 ‘회사’가 이러한 신청에 대하여 승인함으로써 체결됩니다.\n'
                          '2. ‘회사’는 ‘가입신청자’의 신청에 대하여 ‘서비스’ 이용을 승낙함을 원칙으로 하며, 성립시기는 ‘회사’가 가입완료를 신청절차 상에 표시한 시점으로 합니다.\n'
                          '3. 제1항에 따른 신청에 있어 ‘회사’는 ‘가입신청자’에게 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.\n'
                          '4. ‘회사’는 서비스관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.\n'
                          '5. ‘회원’은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 ‘회사’에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 하며 변경사항을 알리지 않아 발생한 불이익에 대하여 ‘회사’는 책임지지 않습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제6조 이용계약의 종료',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회원’의 해지\n'
                          '  (1) ‘회원’은 언제든지 ‘회사’에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다.\n'
                          '  (2) ‘회사’는 제1호에 따른 ‘회원’의 해지요청에 대해 특별한 사정이 없는 한 이를 즉시 처리합니다.\n'
                          '  (3) ‘회원’이 계약을 해지하는 경우 ‘회원’이 작성한 게시물은 삭제되지 않습니다.\n'
                          '2. ‘회사’의 해지\n'
                          '  (1) ‘회사’는 다음과 같은 사유가 있는 경우 이용계약을 해지할 수 있습니다. 이 경우 ‘회사’는 ‘회원’에게 전자우편, 전화, 팩스 기타의 방법을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 다만, ‘회사’는 해당 ‘회원’에게 해지사유에 대한 의견진술의 기회를 부여할 수 있습니다.\n'
                          '    A. ‘회원’이 ‘회사’나 다른 회원 기타 타인의 권리나 명예를 침해하는 행위를 한 경우\n'
                          '    B. 기타 ‘회원’이 이 약관 및 ‘회사’의 정책에 위배되는 행위를 하거나 이 약관에서 정한 해지사유가 발생한 경우\n'
                          '  (2) 이용계약은 ‘회사’가 해지의사를 ‘회원’에게 통지함으로써 종료됩니다. 이 경우 ‘회사’가 해지의사를 ‘회원’이 등록한 전자우편, 전화 기타의 방법을 통해 통지하거나 ‘회사’ 게시판에 게시함으로써 통지를 갈음합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제7조 개인정보보호의 의무',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '‘회사’는 ‘정보통신망’등 관계법령이 정하는 바에 따라 ‘회원’의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 ‘회사’의 개인정보취급방침이 적용됩니다. 다만, ‘회사’의 ‘서비스’ 이외의 링크된 사이트에서는 ‘회사’의 개인정보취급방침이 적용되지 않습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제8조 회원의 ID 및 비밀번호에 대한 의무',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회원’은 자신의 로그인 정보를 제3자에게 이용하게 해서는 안됩니다.\n'
                          '2. ‘회원’은 자신의 로그인 정보를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 ‘회사’에 통보하고 ‘회사’의 조치가 있는 경우에는 그에 따라야 합니다.\n'
                          '3. ‘회원’이 제2항에 따른 통지를 하지 않거나 ‘회사’의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 ‘회원’에게 있습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제9조 회사의 의무',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회사’는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 ‘서비스’를 제공하기 위하여 최선을 다하여 노력합니다.\n'
                          '2. ‘회사’는 서비스에 장애가 생기거나 멸실 된 때에는 지체없이 이를 수리 복구하여야 합니다. 다만, 천재지변, 비상사태 또는 그 밖에 부득이한 경우에는 그 서비스를 중단하거나 중지할 수 있습니다.\n'
                          '3. ‘회사’는 서비스 이용과 관련하여 ‘회원’으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다.\n'
                          '4. ‘회사’는 사업의 폐지 또는 휴지 예정일 30일전까지 특별한 시정이 없는 한 ‘회원’에게 그 사실을 통보하여야 합니다.본 이용약관(이하 ‘약관’이라 함)은 세연시스템즈(주)(이하 ‘회사)가 이용고객(이하 ‘회원’)간에 회사가 제공하는 온라인상의 인터넷 서비스(이하 ‘서비스’)의 가입조건 및 이용에 관한 제반사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제10조 회원 및 이용자의 의무',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘이용자’는 관계법령 및 이 약관의 규정, ‘회사’의 정책, 이용안내 등 ‘회사’가 통지 또는 공지하는 사항을 준수하여야 하며, 기타 ‘회사’업무에 방해되는 행위를 하여서는 안됩니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제11조 이용자 게시물 및 관리',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘이용자’가 작성한 게시물에 대한 저작권 및 모든 책임은 이를 게시한 ‘이용자’에게 있습니다. 단, ‘회사’는 ‘이용자’가 게시하거나 등록하는 게시물의 내용이 다음 각 호에 해당한다고 판단되는 경우 해당 게시물을 사전 통지 없이 삭제 또는 임시조치 할 수 있습니다.\n'
                          '  (1) 다른 회원 또는 제3자를 비방하거나 명예를 손상시키는 경우\n'
                          '  (2) 공공질서 및 미풍양속에 위반되는 내용일 경우\n'
                          '  (3) 범죄적 행위에 결부된다고 인정되는 경우\n'
                          '  (4) ‘회사’의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우\n'
                          '  (5) 해당 서비스와 관련 없는 내용인 경우\n'
                          '  (6) 기타 ‘회사’의 서비스 약관, 운영정책 등 위반행위를 할 우려가 있거나 위반행위를 한 경우\n'
                          '2. ‘이용자’의 ‘게시물’이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는 경우 권리자는 관련법이 정한 절차에 따라 해당 ‘게시물’의 게시중단 및 삭제 등을 요청할 수 있으며, ‘회사’는 관련법에 따라 조치를 취하여야 합니다.\n'
                          '3. 본 조에 따른 세부절차는 정보통신망법 및 저작권법이 규정한 범위 내에서 회사가 정한 게시중단요청 서비스에 따릅니다. (게시중단요청 : dev@bicompany.kr )\n'
                          '4. ‘서비스’에 대한 저작권 및 지적재산권은 ‘회사’에 귀속됩니다. 단, ‘이용자’의 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외합니다. ‘회사’는 서비스와 관련하여 ‘이용자’에게 ‘회사’가 정한 이용조건에 따라 부고장, 화환주문, 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, ‘이용자’는 이를 양도, 판매, 담보제공 등 처분행위를 할 수 없습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제12조 서비스의 변경',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회사’는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 ‘서비스’를 변경할 수 있습니다.\n'
                          '2. ‘회사’는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 ‘이용자’에게 별도의 보상을 하지 않습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제13조 서비스의 이용시간 및 중단',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘서비스’의 이용은 ‘회사’의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기점검 등의 필요로 ‘회사’가 정한 날이나 시간은 제외됩니다.\n'
                          '2. ‘회사’는 ‘서비스’의 원활한 수행을 위하여 필요한 기간을 정하여 사전에 공지하고 ‘서비스’를 중지할 수 있습니다. 단, 불가피하게 긴급한 조치를 필요로 하는 경우 사후에 통지할 수도 있습니다.\n'
                          '3. ‘회사’는 컴퓨터 등 정보통신설비의 보수점검  • 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 ‘서비스’의 전부 또는 일부를 제한하거나 중지할 수 있습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제14조 계약 해지 및 이용제한',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회원’은 언제든지 ‘서비스’ 초기화면의 고객센터를 통하여 이용계약 해지 신청을 할 수 있으며, ‘회사’는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.\n'
                          '2. ‘회원’이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 ‘회사’가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 ‘회원’의 데이터는 소멸됩니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제15조 손해배상 및 책임제한',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회사’와 ‘이용자’는 서비스 이용과 관련하여 고의 또는 과실로 상대방에게 손해를 끼친 경우에는 이를 배상하여야 합니다. 단, 회사는 무료로 제공하는 서비스의 이용과 관련하여 개인정보보호 정책에서 정하는 내용에 위반하지 않는 한 어떠한 손해도 책임을 지지 않습니다.\n'
                          '2. ‘회사’는 천재지변 또는 ‘이용자’의 귀책사유로 인한 불가항력으로 인하여 ‘서비스’를 제공할 수 없는 경우에는 ‘서비스’’ 이용의 장애에 대하여 책임을 지지 않습니다.\n'
                          '3. ‘회사’는 ‘이용자’가 ‘서비스’에 게시한 게시물의 정보, 자료, 이미지 등 내용에 관하여는 책임을 지지 않습니다.\n'
                          '4. ‘회사’가 사전에 홈페이지 또는 서비스 초기화면 등에 내용을 고지하여 통보한 경우에는 그 손해에 대하여 ‘회사’가 책임을 지지 않습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제16조 주문 및 결제',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘이용자’는 다음 또는 이와 유사한 방법에 의한 구매를 신청할 수 있습니다.\n'
                          '  (1) 전화주문서비스\n'
                          '  (2) 온라인주문서비스(수취인 정보의 입력 및 결제수단의 선택 포함)\n'
                          '2. ‘이용자’는 온라인 온라인주문서비스로 주문하는 경우 배송지, 배송지주소, 수취인, 수취인연락처 등 정보에 대한 정확한 정보를 기재해야 하며, ‘이용자’가 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 ‘이용자’가 부담합니다.\n'
                          '3. ‘회사’는 ‘이용자’의 결제내역을 서비스 화면을 통해 확인할 수 있도록 조치하며, 전자상거래등에서의 소비자보호에 관한 법률 규정에 의해 일정기간 동안 보존할 수 있습니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제17조 취소 및 환불',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘재화 등’에 대한 취소 및 환불규정은 전자상거래등에서의 소비자보호에 관한 법률 등 관련 법령을 준수합니다. 또한, 주문완료 후 화환이 배송중인 이후에는 회복할 수 없는 손해가 발생하므로 단순 변심에 의한 청약철회 등은 할 수 없습니다.\n'
                          '2. 결제취소는 고객센터에 유선 접수가 가능하며, 신용카드결제 및 간편결제는 신용카드사 및 해당 결제업체의 환불기준에 의거하여 처리가 완료되는데 시일이 소요될 수 있습니다.\n'
                          '3. 환불요청은 고객센터에 유선 접수가 가능하며, 접수완료일로부터 1영업일 이내 ‘이용자’가 요청한 환불 계좌로 환급하여 드립니다. 단, 임시공휴일 등 갑작스런 휴일일 경우 그 다음 영업일에 환급하여 드립니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '제18조 준거법 및 재판관할',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '1. ‘회사’와 ‘이용자’간 제기된 소송은 대한민국법을 준거법으로 합니다.\n'
                          '2. ‘회사’와 ‘이용자’간 발생한 분쟁에 대해 소송이 제기될 경우 ‘회사’의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '부칙',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '서비스이용약관 ver. 1\n'
                          '1. 이 약관은 2024년 5월 8일부터 적용됩니다.\n'
                          '2. 회사는 약관을 변경하는 경우에 이용자가 그 변경 여부, 변경된 사항의 시행시기와 변경된 내용을 언제든지 쉽게 할 수 있도록 지속적으로 ‘서비스’를 통하여 공개합니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize16,
                        fontWeight: MediaRes.regular,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
