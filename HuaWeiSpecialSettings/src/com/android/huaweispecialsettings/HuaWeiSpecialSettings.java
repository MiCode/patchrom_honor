/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.huaweispecialsettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;

import java.util.ArrayList;

public class HuaWeiSpecialSettings extends PreferenceActivity{
    private static final String LOG_TAG = "HuaWeiSpecialSettings";
    private static final String FAST_POWER_ON = "fast_power_on";

    /** If there is no setting in the provider, use this. */
    private static final String KEY_FAST_POWER_ON = "fast_power_on";

    private CheckBoxPreference mPowerFastOn;
 
    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.huawei_special_settings);
        mPowerFastOn = (CheckBoxPreference) findPreference(KEY_FAST_POWER_ON);
        updateState();
        Log.i(LOG_TAG, "onCreate");
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mPowerFastOn) {
            if (mPowerFastOn.isChecked()) {
                Settings.System.putInt(getContentResolver(), FAST_POWER_ON, 1);
                Log.i(LOG_TAG, "Checked");
            } else {
                Log.i(LOG_TAG, "Unchecked");
                Settings.System.putInt(getContentResolver(), FAST_POWER_ON, 0);
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        Log.i(LOG_TAG, "updateState");
        updateFastPowerOnState();
    }

    private void updateFastPowerOnState() {
        Log.i(LOG_TAG, "updatePowerFastOnState");
        mPowerFastOn.setChecked(Settings.System.getInt(getContentResolver(), FAST_POWER_ON, 1) != 0);
    }
}


