.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 45
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 47
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 52
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 54
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 56
    const-string v0, "Not a GSM phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 82
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "preferenceTreeClick: return true"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method
