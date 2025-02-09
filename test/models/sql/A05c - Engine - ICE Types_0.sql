declare
  l_dgrm_content clob;
begin
  l_dgrm_content := apex_string.join_clob(
    apex_t_varchar2(
      q'[<?xml version="1.0" encoding="UTF-8"?>]'
      ,q'[<bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:apex="https://flowsforapex.org" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_1wzb475" targetNamespace="http://bpmn.io/schema/b" exporter="Flows for APEX" exporterVersion="23.1.0">]'
      ,q'[  <bpmn:process id="Process_ze92fhds" isExecutable="false" apex:manualInput="false">]'
      ,q'[    <bpmn:startEvent id="Event_1wna5t0" name="Start">]'
      ,q'[      <bpmn:outgoing>Flow_0xu650p</bpmn:outgoing>]'
      ,q'[    </bpmn:startEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0xu650p" sourceRef="Event_1wna5t0" targetRef="Gateway_1oqzfrg" />]'
      ,q'[    <bpmn:task id="Activity_BeforeA" name="BeforeA">]'
      ,q'[      <bpmn:incoming>Flow_1soxpc5</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0x7o9ox</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1soxpc5" sourceRef="Gateway_1oqzfrg" targetRef="Activity_BeforeA" apex:sequence="10" />]'
      ,q'[    <bpmn:intermediateCatchEvent id="Event_A" name="A">]'
      ,q'[      <bpmn:incoming>Flow_0x7o9ox</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_000ebhp</bpmn:outgoing>]'
      ,q'[      <bpmn:timerEventDefinition id="TimerEventDefinition_0811uw1">]'
      ,q'[        <bpmn:timeDuration xsi:type="bpmn:tFormalExpression">PT5S</bpmn:timeDuration>]'
      ,q'[      </bpmn:timerEventDefinition>]'
      ,q'[    </bpmn:intermediateCatchEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0x7o9ox" sourceRef="Activity_BeforeA" targetRef="Event_A" apex:sequence="10" />]'
      ,q'[    <bpmn:task id="Activity_BeforeB" name="BeforeB">]'
      ,q'[      <bpmn:incoming>Flow_0bnef2c</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0qj8zq6</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0bnef2c" sourceRef="Gateway_1oqzfrg" targetRef="Activity_BeforeB" apex:sequence="20" />]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0qj8zq6" sourceRef="Activity_BeforeB" targetRef="Event_B" />]'
      ,q'[    <bpmn:intermediateCatchEvent id="Event_B" name="B">]'
      ,q'[      <bpmn:incoming>Flow_0qj8zq6</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0vdpqa7</bpmn:outgoing>]'
      ,q'[      <bpmn:conditionalEventDefinition id="ConditionalEventDefinition_1xlskr3">]'
      ,q'[        <bpmn:condition xsi:type="bpmn:tFormalExpression" />]'
      ,q'[      </bpmn:conditionalEventDefinition>]'
      ,q'[    </bpmn:intermediateCatchEvent>]'
      ,q'[    <bpmn:task id="Activity_AfterB" name="AfterB">]'
      ,q'[      <bpmn:incoming>Flow_0vdpqa7</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1mmadta</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0vdpqa7" sourceRef="Event_B" targetRef="Activity_AfterB" />]'
      ,q'[    <bpmn:endEvent id="Event_BEnd" name="BEnd">]'
      ,q'[      <bpmn:incoming>Flow_1mmadta</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1mmadta" sourceRef="Activity_AfterB" targetRef="Event_BEnd" />]'
      ,q'[    <bpmn:task id="Activity_AfterA" name="AfterA">]'
      ,q'[      <bpmn:incoming>Flow_000ebhp</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_14n5nb9</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_000ebhp" sourceRef="Event_A" targetRef="Activity_AfterA" />]'
      ,q'[    <bpmn:endEvent id="Event_AEnd" name="AEnd">]'
      ,q'[      <bpmn:incoming>Flow_14n5nb9</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_14n5nb9" sourceRef="Activity_AfterA" targetRef="Event_AEnd" />]'
      ,q'[    <bpmn:task id="Activity_BeforeC" name="BeforeC">]'
      ,q'[      <bpmn:incoming>Flow_0lmt8o9</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1t3p5hd</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0lmt8o9" sourceRef="Gateway_1oqzfrg" targetRef="Activity_BeforeC" apex:sequence="30" />]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1t3p5hd" sourceRef="Activity_BeforeC" targetRef="Event_C" />]'
      ,q'[    <bpmn:intermediateCatchEvent id="Event_C" name="C">]'
      ,q'[      <bpmn:incoming>Flow_1t3p5hd</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0iv608k</bpmn:outgoing>]'
      ,q'[      <bpmn:signalEventDefinition id="SignalEventDefinition_0d4ce4f" />]'
      ,q'[    </bpmn:intermediateCatchEvent>]'
      ,q'[    <bpmn:task id="Activity_AfterC" name="AfterC">]'
      ,q'[      <bpmn:incoming>Flow_0iv608k</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_06g2qee</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_0iv608k" sourceRef="Event_C" targetRef="Activity_AfterC" apex:sequence="10" />]'
      ,q'[    <bpmn:endEvent id="Event_CEnd" name="CEnd">]'
      ,q'[      <bpmn:incoming>Flow_06g2qee</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_06g2qee" sourceRef="Activity_AfterC" targetRef="Event_CEnd" apex:sequence="10" />]'
      ,q'[    <bpmn:task id="Activity_BeforeD" name="BeforeD">]'
      ,q'[      <bpmn:incoming>Flow_17601xu</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_09i4bz2</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_17601xu" sourceRef="Gateway_1oqzfrg" targetRef="Activity_BeforeD" apex:sequence="40" />]'
      ,q'[    <bpmn:sequenceFlow id="Flow_09i4bz2" sourceRef="Activity_BeforeD" targetRef="Event_D" />]'
      ,q'[    <bpmn:task id="Activity_AfterD" name="AfterD">]'
      ,q'[      <bpmn:incoming>Flow_1m1mre0</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1l2kkxm</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1m1mre0" sourceRef="Event_D" targetRef="Activity_AfterD" />]'
      ,q'[    <bpmn:endEvent id="Event_DEnd" name="DEnd">]'
      ,q'[      <bpmn:incoming>Flow_1l2kkxm</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id="Flow_1l2kkxm" sourceRef="Activity_AfterD" targetRef="Event_DEnd" />]'
      ,q'[    <bpmn:intermediateCatchEvent id="Event_D" name="D" apex:type="simpleMessage">]'
      ,q'[      <bpmn:incoming>Flow_09i4bz2</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1m1mre0</bpmn:outgoing>]'
      ,q'[      <bpmn:messageEventDefinition id="MessageEventDefinition_0ep7awy">]'
      ,q'[        <bpmn:extensionElements>]'
      ,q'[          <apex:messageName>]'
      ,q'[            <apex:expressionType>static</apex:expressionType>]'
      ,q'[            <apex:expression>InMessage</apex:expression>]'
      ,q'[          </apex:messageName>]'
      ,q'[          <apex:correlationKey>]'
      ,q'[            <apex:expressionType>static</apex:expressionType>]'
      ,q'[            <apex:expression>KEY</apex:expression>]'
      ,q'[          </apex:correlationKey>]'
      ,q'[          <apex:correlationValue>]'
      ,q'[            <apex:expressionType>static</apex:expressionType>]'
      ,q'[            <apex:expression>1</apex:expression>]'
      ,q'[          </apex:correlationValue>]'
      ,q'[          <apex:payloadVariable>MyClob</apex:payloadVariable>]'
      ,q'[        </bpmn:extensionElements>]'
      ,q'[      </bpmn:messageEventDefinition>]'
      ,q'[    </bpmn:intermediateCatchEvent>]'
      ,q'[    <bpmn:parallelGateway id="Gateway_1oqzfrg" name="path?">]'
      ,q'[      <bpmn:incoming>Flow_0xu650p</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_1soxpc5</bpmn:outgoing>]'
      ,q'[      <bpmn:outgoing>Flow_0bnef2c</bpmn:outgoing>]'
      ,q'[      <bpmn:outgoing>Flow_0lmt8o9</bpmn:outgoing>]'
      ,q'[      <bpmn:outgoing>Flow_17601xu</bpmn:outgoing>]'
      ,q'[    </bpmn:parallelGateway>]'
      ,q'[  </bpmn:process>]'
      ,q'[  <bpmndi:BPMNDiagram id="BPMNDiagram_1">]'
      ,q'[    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_ze92fhds">]'
      ,q'[      <bpmndi:BPMNShape id="Event_1wna5t0_di" bpmnElement="Event_1wna5t0">]'
      ,q'[        <dc:Bounds x="192" y="342" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="198" y="385" width="24" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0u0cely_di" bpmnElement="Activity_BeforeA">]'
      ,q'[        <dc:Bounds x="480" y="50" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_05suh2j_di" bpmnElement="Event_A">]'
      ,q'[        <dc:Bounds x="652" y="72" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="666" y="115" width="8" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0vchoy6_di" bpmnElement="Activity_BeforeB">]'
      ,q'[        <dc:Bounds x="480" y="190" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_1n5vzvv_di" bpmnElement="Event_B">]'
      ,q'[        <dc:Bounds x="652" y="212" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="666" y="255" width="8" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1ynp9qo_di" bpmnElement="Activity_AfterB">]'
      ,q'[        <dc:Bounds x="760" y="190" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0n9pu8w_di" bpmnElement="Event_BEnd">]'
      ,q'[        <dc:Bounds x="932" y="212" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="937" y="255" width="27" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_17eam7r_di" bpmnElement="Activity_AfterA">]'
      ,q'[        <dc:Bounds x="760" y="50" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_168ujiu_di" bpmnElement="Event_AEnd">]'
      ,q'[        <dc:Bounds x="932" y="72" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="937" y="115" width="27" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0oaez0t_di" bpmnElement="Activity_BeforeC">]'
      ,q'[        <dc:Bounds x="480" y="320" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0qtwbaf_di" bpmnElement="Event_C">]'
      ,q'[        <dc:Bounds x="652" y="342" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="666" y="385" width="8" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_1xuwbpk_di" bpmnElement="Activity_AfterC">]'
      ,q'[        <dc:Bounds x="760" y="320" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_1u855f8_di" bpmnElement="Event_CEnd">]'
      ,q'[        <dc:Bounds x="932" y="342" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="936" y="385" width="28" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0i0pmef_di" bpmnElement="Activity_BeforeD">]'
      ,q'[        <dc:Bounds x="480" y="430" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Activity_0u2ahzb_di" bpmnElement="Activity_AfterD">]'
      ,q'[        <dc:Bounds x="760" y="430" width="100" height="80" />]'
      ,q'[        <bpmndi:BPMNLabel />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0vztz59_di" bpmnElement="Event_DEnd">]'
      ,q'[        <dc:Bounds x="932" y="452" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="936" y="495" width="28" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Event_0hotkce_di" bpmnElement="Event_D">]'
      ,q'[        <dc:Bounds x="652" y="452" width="36" height="36" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="666" y="495" width="8" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id="Gateway_1g1gy4q_di" bpmnElement="Gateway_1oqzfrg">]'
      ,q'[        <dc:Bounds x="295" y="335" width="50" height="50" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="276" y="313" width="28" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0xu650p_di" bpmnElement="Flow_0xu650p">]'
      ,q'[        <di:waypoint x="228" y="360" />]'
      ,q'[        <di:waypoint x="295" y="360" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1soxpc5_di" bpmnElement="Flow_1soxpc5">]'
      ,q'[        <di:waypoint x="320" y="335" />]'
      ,q'[        <di:waypoint x="320" y="90" />]'
      ,q'[        <di:waypoint x="480" y="90" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="362" y="53" width="75" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0x7o9ox_di" bpmnElement="Flow_0x7o9ox">]'
      ,q'[        <di:waypoint x="580" y="90" />]'
      ,q'[        <di:waypoint x="652" y="90" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0bnef2c_di" bpmnElement="Flow_0bnef2c">]'
      ,q'[        <di:waypoint x="320" y="335" />]'
      ,q'[        <di:waypoint x="320" y="230" />]'
      ,q'[        <di:waypoint x="480" y="230" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="362" y="193" width="75" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0qj8zq6_di" bpmnElement="Flow_0qj8zq6">]'
      ,q'[        <di:waypoint x="580" y="230" />]'
      ,q'[        <di:waypoint x="652" y="230" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0vdpqa7_di" bpmnElement="Flow_0vdpqa7">]'
      ,q'[        <di:waypoint x="688" y="230" />]'
      ,q'[        <di:waypoint x="760" y="230" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1mmadta_di" bpmnElement="Flow_1mmadta">]'
      ,q'[        <di:waypoint x="860" y="230" />]'
      ,q'[        <di:waypoint x="932" y="230" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_000ebhp_di" bpmnElement="Flow_000ebhp">]'
      ,q'[        <di:waypoint x="688" y="90" />]'
      ,q'[        <di:waypoint x="760" y="90" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_14n5nb9_di" bpmnElement="Flow_14n5nb9">]'
      ,q'[        <di:waypoint x="860" y="90" />]'
      ,q'[        <di:waypoint x="932" y="90" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0lmt8o9_di" bpmnElement="Flow_0lmt8o9">]'
      ,q'[        <di:waypoint x="345" y="360" />]'
      ,q'[        <di:waypoint x="480" y="360" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="375" y="342" width="76" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1t3p5hd_di" bpmnElement="Flow_1t3p5hd">]'
      ,q'[        <di:waypoint x="580" y="360" />]'
      ,q'[        <di:waypoint x="652" y="360" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_0iv608k_di" bpmnElement="Flow_0iv608k">]'
      ,q'[        <di:waypoint x="688" y="360" />]'
      ,q'[        <di:waypoint x="760" y="360" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_06g2qee_di" bpmnElement="Flow_06g2qee">]'
      ,q'[        <di:waypoint x="860" y="360" />]'
      ,q'[        <di:waypoint x="932" y="360" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_17601xu_di" bpmnElement="Flow_17601xu">]'
      ,q'[        <di:waypoint x="320" y="385" />]'
      ,q'[        <di:waypoint x="320" y="470" />]'
      ,q'[        <di:waypoint x="480" y="470" />]'
      ,q'[        <bpmndi:BPMNLabel>]'
      ,q'[          <dc:Bounds x="342" y="443" width="76" height="14" />]'
      ,q'[        </bpmndi:BPMNLabel>]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_09i4bz2_di" bpmnElement="Flow_09i4bz2">]'
      ,q'[        <di:waypoint x="580" y="470" />]'
      ,q'[        <di:waypoint x="652" y="470" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1m1mre0_di" bpmnElement="Flow_1m1mre0">]'
      ,q'[        <di:waypoint x="688" y="470" />]'
      ,q'[        <di:waypoint x="760" y="470" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id="Flow_1l2kkxm_di" bpmnElement="Flow_1l2kkxm">]'
      ,q'[        <di:waypoint x="860" y="470" />]'
      ,q'[        <di:waypoint x="932" y="470" />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[    </bpmndi:BPMNPlane>]'
      ,q'[  </bpmndi:BPMNDiagram>]'
      ,q'[</bpmn:definitions>]'
      ,q'[]'
  ));
  flow_diagram.upload_and_parse(
    pi_dgrm_name => 'A05c - Engine - ICE Types',
    pi_dgrm_version => '0',
    pi_dgrm_category => 'Testing',
    pi_dgrm_content => l_dgrm_content,
    pi_force_overwrite => true
);
end;
/
