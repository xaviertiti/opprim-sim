// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package eu.musesproject.server.rt2ae.client.managed.activity;
import com.google.gwt.activity.shared.AbstractActivity;
import com.google.gwt.event.shared.EventBus;
import com.google.gwt.place.shared.Place;
import com.google.gwt.place.shared.PlaceController;
import com.google.gwt.user.client.ui.AcceptsOneWidget;
import com.google.web.bindery.requestfactory.shared.EntityProxy;
import com.google.web.bindery.requestfactory.shared.EntityProxyId;
import com.google.web.bindery.requestfactory.shared.Receiver;
import com.google.web.bindery.requestfactory.shared.Request;
import eu.musesproject.server.rt2ae.client.managed.request.ApplicationRequestFactory;
import eu.musesproject.server.rt2ae.client.managed.ui.DeviceSecurityStateDetailsView;
import eu.musesproject.server.rt2ae.client.managed.ui.DeviceSecurityStateDetailsView.Delegate;
import eu.musesproject.server.rt2ae.client.proxy.DeviceProxy;
import eu.musesproject.server.rt2ae.client.proxy.DeviceSecurityStateProxy;
import eu.musesproject.server.rt2ae.client.scaffold.activity.IsScaffoldMobileActivity;
import eu.musesproject.server.rt2ae.client.scaffold.place.ProxyListPlace;
import eu.musesproject.server.rt2ae.client.scaffold.place.ProxyPlace;
import eu.musesproject.server.rt2ae.client.scaffold.place.ProxyPlace.Operation;
import java.util.Set;

public abstract class DeviceSecurityStateDetailsActivity_Roo_Gwt extends AbstractActivity implements Delegate, IsScaffoldMobileActivity {

    protected ApplicationRequestFactory requests;

    protected EntityProxyId<DeviceSecurityStateProxy> proxyId;

    protected PlaceController placeController;

    protected AcceptsOneWidget display;

    protected DeviceSecurityStateDetailsView view;

    public void deleteClicked() {
        if (!view.confirm("Really delete this entry? You cannot undo this change.")) {
            return;
        }
        requests.deviceSecurityStateRequest().remove().using(view.getValue()).fire(new Receiver<Void>() {

            public void onSuccess(Void ignore) {
                if (display == null) {
                    // This activity is dead
                    return;
                }
                // Go back to the previous place.
                placeController.goTo(getBackButtonPlace());
            }
        });
    }

    protected void find(Receiver<EntityProxy> callback) {
        requests.find(proxyId).with("deviceId").fire(callback);
    }
}