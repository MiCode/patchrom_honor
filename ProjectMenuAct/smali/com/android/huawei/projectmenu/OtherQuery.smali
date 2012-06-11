.class public Lcom/android/huawei/projectmenu/OtherQuery;
.super Landroid/app/ListActivity;
.source "OtherQuery.java"


# static fields
.field private static final CDMA_PHONE:I = 0x2

.field private static final GSM_PHONE:I = 0x1

.field private static final NO_PHONE:I


# instance fields
.field private branch_info:Ljava/lang/String;

.field private freq_nv_back_info:Ljava/lang/String;

.field private imei_info:Ljava/lang/String;

.field private mMenu:[Ljava/lang/String;

.field private sn_nv_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/huawei/projectmenu/OtherQuery;->imei_info:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/huawei/projectmenu/OtherQuery;->sn_nv_info:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/huawei/projectmenu/OtherQuery;->freq_nv_back_info:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/huawei/projectmenu/OtherQuery;->branch_info:Ljava/lang/String;

    return-void
.end method

.method private getBranchInfo()V
    .locals 8

    .prologue
    const v7, 0x7f060058

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, buffStr:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v5, "/system/etc"

    const-string v6, "temp1.conf"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    const/4 v3, 0x0

    .line 134
    .local v3, inReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #inReader:Ljava/io/BufferedReader;
    .local v4, inReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 143
    .end local v4           #inReader:Ljava/io/BufferedReader;
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const v6, 0x7f060058

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/huawei/projectmenu/OtherQuery;->branch_info:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_1
    if-eqz v3, :cond_0

    .line 154
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    .end local v3           #inReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    return-void

    .line 136
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "VersionInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening file for read operation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inReader:Ljava/io/BufferedReader;
    :cond_1
    const-string v5, "VersionInfo"

    const-string v6, "File doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/huawei/projectmenu/OtherQuery;->branch_info:Ljava/lang/String;

    goto :goto_2
.end method

.method private getFreqNVInfo()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->InitNVBkInfo()Z

    move-result v0

    .line 116
    .local v0, freqNVInfo:Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const v2, 0x7f060057

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz v0, :cond_0

    const v1, 0x7f06008a

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/huawei/projectmenu/OtherQuery;->freq_nv_back_info:Ljava/lang/String;

    .line 121
    return-void

    .line 116
    :cond_0
    const v1, 0x7f06008b

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getImeiInfo()V
    .locals 4

    .prologue
    .line 70
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/OtherQuery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 71
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, imeiStr:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const v3, 0x7f060055

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->imei_info:Ljava/lang/String;

    .line 111
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const v3, 0x7f060054

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->imei_info:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSN_NV_Info()V
    .locals 7

    .prologue
    const v6, 0x7f060056

    .line 35
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readNv114()Z

    move-result v0

    .line 36
    .local v0, isReadNV114:Z
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReadNV114"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/android/huawei/projectmenu/ProjectMenu;->m_nv114:Ljava/lang/String;

    .line 40
    .local v1, m_nv114:Ljava/lang/String;
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m_nv114"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/16 v3, 0x19

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, sn:Ljava/lang/String;
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/huawei/projectmenu/OtherQuery;->sn_nv_info:Ljava/lang/String;

    .line 62
    .end local v1           #m_nv114:Ljava/lang/String;
    .end local v2           #sn:Ljava/lang/String;
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/OtherQuery;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/huawei/projectmenu/OtherQuery;->sn_nv_info:Ljava/lang/String;

    .line 56
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f06008c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060074

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/OtherQuery;->getSN_NV_Info()V

    .line 173
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/OtherQuery;->getFreqNVInfo()V

    .line 174
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/OtherQuery;->getImeiInfo()V

    .line 175
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/OtherQuery;->getBranchInfo()V

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->imei_info:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->sn_nv_info:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->freq_nv_back_info:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->branch_info:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/OtherQuery;->mMenu:[Ljava/lang/String;

    .line 184
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/OtherQuery;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/OtherQuery;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    return-void
.end method
