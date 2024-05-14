import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

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
          '개인정보 동의',
          style: TextStyle(
              fontSize: MediaRes.fontSize20,
              fontWeight: MediaRes.medium,
              fontFamily: MediaRes.fontPretendard,
              color: MediaRes.blackColor),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '세연시스템즈(주)(이하 ‘회사’라고 함)는 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 개인 보호 보호 가이드 라인을 준수하고 있습니다.',
              style: TextStyle(
                fontSize: MediaRes.fontSize16,
                fontWeight: MediaRes.medium,
              ),),
              SizedBox(height: 15),
              _ShowExpansionTile(),
            ],
          ),
        ),
      ),
    );
  }
}


class _ShowExpansionTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text('1. 개인정보 수집에 대한 동의',
          style: TextStyle(
            fontSize: MediaRes.fontSize18,
            fontWeight: MediaRes.medium
          ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 이용자가 회사의 개인정보처리방침 또는 이용약관의 내용에 대해 "동의함" 버튼 또는 "동의하지 않음" 버튼을 선택하여, 이용자가 동의의 의사표시가 있는 경우 개인정보의 수집에 동의한 것으로 봅니다.',
                style: TextStyle(
                  fontSize: MediaRes.fontSize16,
                  fontWeight: MediaRes.regular
                ),
                ),
            ),
          ],
        ),
         ExpansionTile(
          title: Text('2. 수집하는 개인정보의 항목 및 수집방법',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text('① 메타부고는 아래와 같은 개인정보를 수집하고 있습니다.\n수집항목\n'
                    '- 부고만들기, 부고보내기, 화환보내기, 1:1문의 \n- 이름, 연락처, 이메일, 주소\n\n'
                    '② 개인정보 수집방법\n  홈페이지 및 앱 회원가입 , 문의게시판',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),)),
          ],
        ),
         ExpansionTile(
          title: Text('3. 아동의 개인정보보호',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '① 회사는 만14세 미만 아동의 개인정보를 수집하는 경우 법정대리인의 동의를 받습니다.\n\n② 만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우 회사는 지체없이 필요한 조치를 취합니다.',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('4. 개인정보의 수집 및 이용목적',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text('① 서비스 제공\n'
                    'o 이용자의 상담 문의\no 답변 및 공지사항 전달\n\n'
                    '② 제품 제공\no 화환보내기 상품 배송',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),)),
          ],
        ),
         ExpansionTile(
          title: Text('5. 개인정보의 보유 및 이용기간',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 이용자께서 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용하게 됩니다.개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집/이용목적을 달성하거나 보유/이용기간이 종료된 경우, 사업폐지 등의 사유발생시 당해 개인정보를 지체 없이 파기합니다.단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.'
                    '\n\n① 전자상거래 등에서 소비자 보호에 관한 법률\no 문의접수 시 기재한 개인 정보 및 상담내용: 3년 보관\no 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('6. 개인정보 파기절차 및 그 방법',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 원칙적으로 수집한 개인정보의 이용목적이 달성되면 보관기간 및 이용기간에 따라 해당정보를 지체없이 파기합니다.\n회사의 개인정보 파기절차 및 방법은 다음과 같습니다.\n\n'
                    '① 파기절차\n사이트 이용을 위해 입력한 정보는 이용 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보 보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 삭제되거나 파기됩니다.'
                    '\n\n② 파기방법\n전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.\n종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('7. 개인정보의 제 3자 제공 및 공유',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 이용자의 개인정보를 제 4조에서 고지한 범위 내에서 사용하며 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 제공하지 않습니다.\n'
                    '\n[제 3자 제공]\n보다 나은 서비스 제공을 위하여 이용자님의 개인정보를 제 3자에 제공하거나 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는 사전에 제공 또는 공유 받는 자가 누구 인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 정보가 제공 또는 공유되어야 하는지, 그리고 언제까지 어떻게 보호관리 되는지에 대해 개별적으로 전자우편 및 서면을 통해 고지하여 동의를 구하는 절차를 거치거나, 문의접수시 약관을 통하여 동의를 구할 수도 있습니다. 이용자님께서 동의하지 않은 경우에는 제 3자에게 제공하거나 공유하지 않습니다. 제 3자 제공 및 공유 관계에 변화가 있거나 관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.\n'
                    '다만, 아래의 경우에는 예외로 합니다.'
                    '\n① 이용자가 사전에 개인정보 공개에 동의한 경우'
                    '\n② 법령 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우',                style: TextStyle(
                    fontSize: MediaRes.fontSize16,
                    fontWeight: MediaRes.regular
                ),),),
          ],
        ),
         ExpansionTile(
          title: Text('8. 개인정보의 처리위탁',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 서비스 향상을 위해 아래와 같이 개인정보를 위탁하고 있으며, 관계법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 규정하고 있습니다.\n'
                    '위탁계약 체결 시 개인정보 보호법 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.'
                    '\n위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.'
                    '\n현재 회사는 개인정보를 위탁처리하지 않습니다.',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('9. 이용자 권리와 그 행사방법',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),
          ),
          children: <Widget>[
            ListTile(
                title: Text(
                    '① 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며, 삭제를 요청할 수 있습니다.\n\n'
                    '② 이용자의 개인정보 조회, 수정을 위해서는 "정보수정"을, 가입 해지(동의철회)를 위해서는 개인정보관리책임자에게 서면, 전화 또는 전자우편을 통한 처리가 가능합니다.\n\n'
                    '③ 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 최대한 빨리 정정이 이루어지도록 합니다.\n또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 합니다.\n'
                    '\n④ 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 "5. 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고, 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('10. 쿠키(cookie)의 설치/운영 및 거부에 관한 사항',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),
          ),
          children: <Widget>[
            ListTile(
                title: Text(
                    '쿠키(cookie)는 웹 사이트 서버가 이용자의 컴퓨터로 전송하는 소량의 정보이며, 여기에는 방문한 웹 사이트의 정보 및 서비스 제공 시 확인에 필요한 이용자의 개인정보 등이 담겨 있습니다. 이용자는 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 웹 브라우저 설정을 변경할 수 있습니다. 회사는 다음과 같이 웹 서비스 이용에 있어 필요하다고 판단되는 경우 이용자의 컴퓨터에 쿠키를 전송할 수 있습니다.\n'
                    '\n① 쿠키의 사용 목적 개인의 관심 분야에 따라 차별화된 정보를 제공, 이용자의 접속빈도 또는 이용 시간 등을 분석하여 이용자의 취향과 관심 분야를 파악하여 타겟(target) 마케팅에 활용, 관심 있게 둘러본 정보들에 대해 자취를 추적하여 개인 맞춤 서비스를 제공, 이용자들의 습관을 분석하여 서비스 개편 등을 고려하는 척도, 게시판 글 등록으로 수집되어 사용될 수 있습니다.\n'
                    '\n② 쿠키의 설치/운영 및 거부\no 이용자는 쿠키 설치에 대한 선택권을 가지고 있으며, 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나 모든 쿠키의 저장을 거부할 수도 있습니다.\n'
                    'o 다만, 쿠키의 저장을 거부할 경우에는 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('11. 개인정보의 기술적/관리적 보호 대책',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적, 관리적 대책을 강구하고 있습니다.\n\n'
                    '① 기술적 대책\n'
                    'o 이용자들의 개인정보는 철저히 보호되고 있습니다. 이용자는 개인정보를 누구에게도 알려주시면 안 됩니다.\n이를 위해 회사에서는 기본적으로 PC에서의 사용을 마치신 후 온라인상에서 웹브라우저를 종료하도록 권장합니다. 특히 다른 사람과 PC를 공유하여 사용하거나 공공장소(회사나 학교, 도서관, 인터넷게임방 등)에서 이용한 경우에는 개인정보가 다른 사람에게 알려지는 것을 막기 위해 위와 같은 절차가 더욱 필요할 것입니다.\n'
                    'o 회사는 백신프로그램을 이용하여 해킹이나 컴퓨터 바이러스 등에 의해 이용자의 개인정보가 유출되거나 훼손되는 피해를 방지하기 위한 조치를 취하고 있습니다.\n개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다. 그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.\n\n'
                    '② 관리적 대책\n'
                    'o 회사는 이용자들의 개인정보의 안전한 보호를 위하여 개인정보관련 처리 직원을 담당자에게 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대해 새로운 보안 기술 습득과 개인 정보 보호의무 등에 대한 수시 교육을 통하여 회사의 개인정보 처리방침의 준수를 항상 강조하고 있습니다.\n'
                    'o단, 이용자 본인의 부주의나 인터넷상의 문제로 개인정보가 유출해 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.',                style: TextStyle(
                    fontSize: MediaRes.fontSize16,
                    fontWeight: MediaRes.regular
                ),),),
          ],
        ),
         ExpansionTile(
          title: Text('12. 개인정보관리책임자 및 담당자의 연락처',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(
                title: Text(
                    '이용자는 회사의 서비스를 이용하시면 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.\n이용자가 개인정보를 처리하는 책임자 및 담당자는 개인정보 관련 문의사항에 신속하고 성실하게 답변을 드릴 것입니다.\n\n'
                    '개인정보 관리 책임자\n'
                    '- 이  름 : 손 지 영\n'
                    '- 직  위 : 담 당 자\n'
                    '- 연락처 :  02-6274-2220',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('13. 정보주체의 권익 침해에 대한 구제방법',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),
          ),
          children: <Widget>[
            ListTile(
                title: Text(
                    '개인정보침해에 대한 신고 또는 상담이 필요하신 경우에는 한국정보보호진흥원(KISA) 개인정보침해신고센터로 문의하시기 바랍니다. 또한, 귀하가 개인정보침해를 통한 금전적, 정신적 피해를 입으신 경우에는 한국정보보호진흥원(KISA) 개인정보분쟁조정위원회에 피해구제를 신청하실 수 있습니다.\n'
                    '개인정보분쟁조정위원회 (www.kopico.go.kr / 1833-6972)\n'
                    '개인정보침해신고센터 (privacy.kisa.or.kr / 국번 없이 118)\n'
                    '대검찰청 첨단범죄수사과 (www.spo.go.kr / 02-3480-2000)\n'
                    '경찰청 사이버안전국 (cyberbureau.police.go.kr / 국번없이 182)',
                  style: TextStyle(
                      fontSize: MediaRes.fontSize16,
                      fontWeight: MediaRes.regular
                  ),),),
          ],
        ),
         ExpansionTile(
          title: Text('14. 개인정보처리방침의 변경에 관한 고지의 의무',
            style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium
            ),),
          children: <Widget>[
            ListTile(title: Text('회사는 개인정보 처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.\n\n'
            '공고일자 : 2024년 5월 14일\n''시행일자 : 2024년 5월 16일',
              style: TextStyle(
                  fontSize: MediaRes.fontSize16,
                  fontWeight: MediaRes.regular
              ),),),
          ],
        ),
      ],
    );
  }
}
