// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package eu.musesproject.server.rt2ae.client.managed.ui.renderer;
import com.google.gwt.text.shared.AbstractRenderer;
import eu.musesproject.server.rt2ae.client.managed.request.ApplicationEntityTypesProcessor;
import eu.musesproject.server.rt2ae.client.proxy.AccessrequestProxy;
import eu.musesproject.server.rt2ae.client.proxy.AssetProxy;
import eu.musesproject.server.rt2ae.client.proxy.ClueProxy;
import eu.musesproject.server.rt2ae.client.proxy.DecisionProxy;
import eu.musesproject.server.rt2ae.client.proxy.DeviceProxy;
import eu.musesproject.server.rt2ae.client.proxy.DeviceSecurityStateProxy;
import eu.musesproject.server.rt2ae.client.proxy.OpportunityProxy;
import eu.musesproject.server.rt2ae.client.proxy.OutcomeProxy;
import eu.musesproject.server.rt2ae.client.proxy.RiskPolicyProxy;
import eu.musesproject.server.rt2ae.client.proxy.RiskcommunicationProxy;
import eu.musesproject.server.rt2ae.client.proxy.RiskinformationProxy;
import eu.musesproject.server.rt2ae.client.proxy.RisktreatmentProxy;
import eu.musesproject.server.rt2ae.client.proxy.SecurityIncidentProxy;
import eu.musesproject.server.rt2ae.client.proxy.ThreatProxy;
import eu.musesproject.server.rt2ae.client.proxy.UserActionProxy;
import eu.musesproject.server.rt2ae.client.proxy.UserProxy;
import eu.musesproject.server.rt2ae.client.scaffold.place.ProxyListPlace;

public abstract class ApplicationListPlaceRenderer_Roo_Gwt extends AbstractRenderer<ProxyListPlace> {

    public String render(ProxyListPlace object) {
        return new ApplicationEntityTypesProcessor<String>() {

            @Override
            public void handleAccessrequest(AccessrequestProxy isNull) {
                setResult("Accessrequests");
            }

            @Override
            public void handleAsset(AssetProxy isNull) {
                setResult("Assets");
            }

            @Override
            public void handleClue(ClueProxy isNull) {
                setResult("Clues");
            }

            @Override
            public void handleDecision(DecisionProxy isNull) {
                setResult("Decisions");
            }

            @Override
            public void handleDevice(DeviceProxy isNull) {
                setResult("Devices");
            }

            @Override
            public void handleDeviceSecurityState(DeviceSecurityStateProxy isNull) {
                setResult("DeviceSecurityStates");
            }

            @Override
            public void handleOpportunity(OpportunityProxy isNull) {
                setResult("Opportunitys");
            }

            @Override
            public void handleOutcome(OutcomeProxy isNull) {
                setResult("Outcomes");
            }

            @Override
            public void handleRiskPolicy(RiskPolicyProxy isNull) {
                setResult("RiskPolicys");
            }

            @Override
            public void handleRiskcommunication(RiskcommunicationProxy isNull) {
                setResult("Riskcommunications");
            }

            @Override
            public void handleRiskinformation(RiskinformationProxy isNull) {
                setResult("Riskinformations");
            }

            @Override
            public void handleRisktreatment(RisktreatmentProxy isNull) {
                setResult("Risktreatments");
            }

            @Override
            public void handleSecurityIncident(SecurityIncidentProxy isNull) {
                setResult("SecurityIncidents");
            }

            @Override
            public void handleThreat(ThreatProxy isNull) {
                setResult("Threats");
            }

            @Override
            public void handleUserAction(UserActionProxy isNull) {
                setResult("UserActions");
            }

            @Override
            public void handleUser(UserProxy isNull) {
                setResult("Users");
            }
        }.process(object.getProxyClass());
    }
}