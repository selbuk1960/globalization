package io.ionic.plugins.globalization;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.text.NumberFormat;

@CapacitorPlugin(name = "Globalization")
public class GlobalizationPlugin extends Plugin {

    private Globalization implementation = new Globalization();

    @PluginMethod
    public void formatDateWithPreferredFormat(PluginCall call) {
        String dateStr = call.getString("date", "");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        try {
            Date date = formatter.parse(dateStr);
            formatter.applyPattern("MMM d, yyyy"); // Cambiar según el formato deseado
            String formattedDate = formatter.format(date);
            JSObject result = new JSObject();
            result.put("value", formattedDate);
            call.resolve(result);
        } catch (Exception e) {
            call.reject("Error parsing date", e);
        }
    }

    @PluginMethod
    public void formatMoneyWithPreferredCurrency(PluginCall call) {
        double value = call.getDouble("value", 0.0);
        int decimals = call.getInt("decimals", 2);
        
        NumberFormat formatter = NumberFormat.getCurrencyInstance(Locale.getDefault());
        formatter.setMaximumFractionDigits(decimals);
        
        String formattedValue = formatter.format(value);
        JSObject result = new JSObject();
        result.put("value", formattedValue);
        call.resolve(result);
    }
}
