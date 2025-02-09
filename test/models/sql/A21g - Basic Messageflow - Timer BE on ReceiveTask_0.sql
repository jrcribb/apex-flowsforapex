declare
  l_dgrm_content clob;
begin
  l_dgrm_content := apex_string.join_clob(
    apex_t_varchar2(
      q'[<?xml version="1.0" encoding="UTF-8"?>]'
      ,q'[<bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:apex="https://flowsforapex.org" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_1wzb475" targetNamespace="http://bpmn.io/schema/b" exporter="Flows for APEX" exporterVersion="23.1.0">]'
      ,q'[  <bpmn:process id="Process_A21g" name="A21g Timers on ReceiveTask" isExecutable="true" apex:manualInput="false">]'
      ,q'[    <bpmn:startEvent id="Event_Start" name="Start">]'
      ,q'[      <bpmn:outgoing>Flow_0bhuist</bpmn:outgoing>]'
      ,q'[    </bpmn:startEvent>]'
      ,q'[    <bpmn:task id="Activity_BeforeTest1" name="Before Test1">]'
      ,q'[      <bpmn:incoming>Flow_0bhuist</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1llp3ej</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0bhuist" sourceRef="Event_Start" targetRef="Activity_BeforeTest1" />]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1llp3ej" sourceRef="Activity_BeforeTest1" targetRef="Activity_Receive1" />]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1ixcfta" sourceRef="Activity_Receive1" targetRef="Activity_BeforeTest2" />]'
      ,q'[    <bpmn:task id="Activity_AfterTest" name="After Test">]'
      ,q'[      <bpmn:incoming>Flow_0vrfdql</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0stqmgg</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0vrfdql" sourceRef="Activity_Receive2" targetRef="Activity_AfterTest" />]'
      ,q'[    <bpmn:endEvent id="Event_End" name="End">]'
      ,q'[      <bpmn:incoming>Flow_0stqmgg</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0stqmgg" sourceRef="Activity_AfterTest" targetRef="Event_End" />]'
      ,q'[    <bpmn:task id="Activity_AfterBE1" name="After BE1">]'
      ,q'[      <bpmn:incoming>Flow_1d1s8fw</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0czwt5u</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1d1s8fw" sourceRef="Event_BE1NITimer" targetRef="Activity_AfterBE1" />]'
      ,q'[    <bpmn:endEvent id="Event_BE1End" name="BE1End">]'
      ,q'[      <bpmn:incoming>Flow_0czwt5u</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0czwt5u" sourceRef="Activity_AfterBE1" targetRef="Event_BE1End" />]'
      ,q'[    <bpmn:task id="Activity_AfterBE2" name="After BE2">]'
      ,q'[      <bpmn:incoming>Flow_0pf35fx</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_09zgax1</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0pf35fx" sourceRef="Event_BE2IntTimer" targetRef="Activity_AfterBE2" />]'
      ,q'[    <bpmn:endEvent id="Event_BE2End" name="BE2End">]'
      ,q'[      <bpmn:incoming>Flow_09zgax1</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_09zgax1" sourceRef="Activity_AfterBE2" targetRef="Event_BE2End" />]'
      ,q'[    <bpmn:receiveTask id="Activity_Receive1" name="Receive1" apex:type="simpleMessage">]'
      ,q'[      <bpmn:extensionElements>]'
      ,q'[        <apex:messageName>]'
      ,q'[          <apex:expressionType>plsqlRawFunctionBody</apex:expressionType>]'
      ,q'[          <apex:expression>return 'MyMessage';</apex:expression>]'
      ,q'[        </apex:messageName>]'
      ,q'[        <apex:correlationKey>]'
      ,q'[          <apex:expressionType>plsqlRawFunctionBody</apex:expressionType>]'
      ,q'[          <apex:expression>return 'MyKey';</apex:expression>]'
      ,q'[        </apex:correlationKey>]'
      ,q'[        <apex:correlationValue>]'
      ,q'[          <apex:expressionType>plsqlRawFunctionBody</apex:expressionType>]'
      ,q'[          <apex:expression>return 'Receive1';</apex:expression>]'
      ,q'[        </apex:correlationValue>]'
      ,q'[      </bpmn:extensionElements>]'
      ,q'[      <bpmn:incoming>Flow_1llp3ej</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1ixcfta</bpmn:outgoing>]'
      ,q'[    </bpmn:receiveTask>]'
      ,q'[    <bpmn:boundaryEvent id="Event_BE1NITimer" name="BE1NITimer" cancelActivity="false" attachedToRef="Activity_Receive1">]'
      ,q'[      <bpmn:outgoing>Flow_1d1s8fw</bpmn:outgoing>]'
      ,q'[      <bpmn:timerEventDefinition id="TimerEventDefinition_1ni5q1m" apex:timerType="oracleDuration">]'
      ,q'[        <bpmn:extensionElements>]'
      ,q'[          <apex:oracleDuration>]'
      ,q'[            <apex:intervalDS>000 00:00:05</apex:intervalDS>]'
      ,q'[          </apex:oracleDuration>]'
      ,q'[        </bpmn:extensionElements>]'
      ,q'[      </bpmn:timerEventDefinition>]'
      ,q'[    </bpmn:boundaryEvent>]'
      ,q'[    <bpmn:receiveTask id="Activity_Receive2" name="Receive2" apex:type="simpleMessage">]'
      ,q'[      <bpmn:extensionElements>]'
      ,q'[        <apex:messageName>]'
      ,q'[          <apex:expressionType>plsqlRawExpression</apex:expressionType>]'
      ,q'[          <apex:expression>'MyMessage'</apex:expression>]'
      ,q'[        </apex:messageName>]'
      ,q'[        <apex:correlationKey>]'
      ,q'[          <apex:expressionType>plsqlRawExpression</apex:expressionType>]'
      ,q'[          <apex:expression>'MyKey'</apex:expression>]'
      ,q'[        </apex:correlationKey>]'
      ,q'[        <apex:correlationValue>]'
      ,q'[          <apex:expressionType>plsqlRawExpression</apex:expressionType>]'
      ,q'[          <apex:expression>'Receive2'</apex:expression>]'
      ,q'[        </apex:correlationValue>]'
      ,q'[      </bpmn:extensionElements>]'
      ,q'[      <bpmn:incoming>Flow_19kghop</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0vrfdql</bpmn:outgoing>]'
      ,q'[    </bpmn:receiveTask>]'
      ,q'[    <bpmn:boundaryEvent id="Event_BE2IntTimer" name="BE2IntTimer" attachedToRef="Activity_Receive2">]'
      ,q'[      <bpmn:outgoing>Flow_0pf35fx</bpmn:outgoing>]'
      ,q'[      <bpmn:timerEventDefinition id="TimerEventDefinition_0655pv1">]'
      ,q'[        <bpmn:timeDuration xsi:type="bpmn:tFormalExpression">PT5S</bpmn:timeDuration>]'
      ,q'[      </bpmn:timerEventDefinition>]'
      ,q'[    </bpmn:boundaryEvent>]'
      ,q'[    <bpmn:task id="Activity_BeforeTest2" name="Before Test2">]'
      ,q'[      <bpmn:incoming>Flow_1ixcfta</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_19kghop</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_19kghop" sourceRef="Activity_BeforeTest2" targetRef="Activity_Receive2" />]'
      ,q'[  </bpmn:process>]'
      ,q'[  <bpmndi:BPMNDiagram id="BPMNDiagram_1">]'
      ,q'[    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_A21g">]'
      ,q'[      <bpmndi:BPMNShape id="Event_088r0zs_di" bpmnElement="Event_Start">]'
      ,q'[        <dc:Bounds x="452" y="412" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="458" y="455" width="24" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0c9sj2f_di" bpmnElement="Activity_BeforeTest1">]'
      ,q'[        <dc:Bounds x="540" y="390" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1ogbval_di" bpmnElement="Activity_AfterBE1">]'
      ,q'[        <dc:Bounds x="830" y="510" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1onuxo9_di" bpmnElement="Activity_Receive1">]'
      ,q'[        <dc:Bounds x="700" y="390" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0f4bob1_di" bpmnElement="Event_End">]'
      ,q'[        <dc:Bounds x="1322" y="412" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="1330" y="455" width="20" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1gfp6nz_di" bpmnElement="Activity_AfterTest">]'
      ,q'[        <dc:Bounds x="1170" y="390" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_07ms1ux_di" bpmnElement="Activity_Receive2">]'
      ,q'[        <dc:Bounds x="1030" y="390" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0nrp2o9_di" bpmnElement="Event_BE2End">]'
      ,q'[        <dc:Bounds x="1322" y="292" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="1320" y="335" width="41" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1v0n6j4_di" bpmnElement="Activity_AfterBE2">]'
      ,q'[        <dc:Bounds x="1170" y="270" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0lgl71w_di" bpmnElement="Event_BE1End">]'
      ,q'[        <dc:Bounds x="1322" y="532" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="1320" y="575" width="41" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0w1270v_di" bpmnElement="Activity_BeforeTest2">]'
      ,q'[        <dc:Bounds x="860" y="390" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_1488c7l_di" bpmnElement="Event_BE1NITimer">]'
      ,q'[        <dc:Bounds x="742" y="452" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="690" y="483" width="60" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_1sb6w3o_di" bpmnElement="Event_BE2IntTimer">]'
      ,q'[        <dc:Bounds x="1062" y="372" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="1009" y="353" width="61" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0bhuist_di" bpmnElement="Flow_0bhuist">]'
      ,q'[        <di:waypoint x="488" y="430" />]'
      ,q'[        <di:waypoint x="540" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1llp3ej_di" bpmnElement="Flow_1llp3ej">]'
      ,q'[        <di:waypoint x="640" y="430" />]'
      ,q'[        <di:waypoint x="700" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1ixcfta_di" bpmnElement="Flow_1ixcfta">]'
      ,q'[        <di:waypoint x="800" y="430" />]'
      ,q'[        <di:waypoint x="860" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1d1s8fw_di" bpmnElement="Flow_1d1s8fw">]'
      ,q'[        <di:waypoint x="760" y="488" />]'
      ,q'[        <di:waypoint x="760" y="550" />]'
      ,q'[        <di:waypoint x="830" y="550" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0czwt5u_di" bpmnElement="Flow_0czwt5u">]'
      ,q'[        <di:waypoint x="930" y="550" />]'
      ,q'[        <di:waypoint x="1322" y="550" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0vrfdql_di" bpmnElement="Flow_0vrfdql">]'
      ,q'[        <di:waypoint x="1130" y="430" />]'
      ,q'[        <di:waypoint x="1170" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0stqmgg_di" bpmnElement="Flow_0stqmgg">]'
      ,q'[        <di:waypoint x="1270" y="430" />]'
      ,q'[        <di:waypoint x="1322" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0pf35fx_di" bpmnElement="Flow_0pf35fx">]'
      ,q'[        <di:waypoint x="1080" y="372" />]'
      ,q'[        <di:waypoint x="1080" y="310" />]'
      ,q'[        <di:waypoint x="1170" y="310" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_09zgax1_di" bpmnElement="Flow_09zgax1">]'
      ,q'[        <di:waypoint x="1270" y="310" />]'
      ,q'[        <di:waypoint x="1322" y="310" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_19kghop_di" bpmnElement="Flow_19kghop">]'
      ,q'[        <di:waypoint x="960" y="430" />]'
      ,q'[        <di:waypoint x="1030" y="430" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[    </bpmndi:BPMNPlane>]'
      ,q'[  </bpmndi:BPMNDiagram>]'
      ,q'[</bpmn:definitions>]'
      ,q'[]'
  ));
  flow_diagram.upload_and_parse(
    pi_dgrm_name => 'A21g - Basic Messageflow - Timer BE on ReceiveTask',
    pi_dgrm_version => '0',
    pi_dgrm_category => 'Testing',
    pi_dgrm_content => l_dgrm_content,
    pi_force_overwrite => true
);
end;
/
