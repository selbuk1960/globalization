package io.ionic.plugins.globalization;
import android.util.Log;

public class Globalization {

    /**
     * Format a number with the user preferred currency
     * @param value
     * @param decimals
     * @return
     */
    public String formatDateWithPreferredFormat(String dateStr) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        try {
            Date date = formatter.parse(dateStr);
            formatter.applyPattern("MMM d, yyyy"); // Cambiar según el formato deseado
            String formattedDate = formatter.format(date);
            return formattedDate;
        } catch (Exception e) {
            Log.e("Globalization", "Error parsing date", e);
            return null;
        }
    }

    /**
     * Format a number with the user preferred currency
     * @param value
     * @param decimals
     * @return
     */
    public String formatMoneyWithPreferredCurrency(double value, int decimals) {
        NumberFormat formatter = NumberFormat.getCurrencyInstance(Locale.getDefault());
        formatter.setMaximumFractionDigits(decimals);
        return formatter.format(value);
    }
}
