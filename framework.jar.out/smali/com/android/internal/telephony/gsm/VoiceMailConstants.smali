.class Lcom/android/internal/telephony/gsm/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final NAME:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "etc/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final TAG:I = 0x2

.field static final VMMODE_CUST_SIM_SP:I = 0x3

.field static final VMMODE_SIM_CUST_SP:I = 0x1

.field static final VMMODE_SIM_SP_CUST:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private voicemailPriorityMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->loadVoiceMail()V

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->setVoicemailPriorityMode()V

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->loadVoiceMail()V

    .line 79
    return-void
.end method

.method private loadVoiceMail()V
    .locals 11

    .prologue
    .line 122
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/voicemail-conf.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v5, vmFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/cust/"

    const-string/jumbo v9, "xml/voicemail-conf.xml"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v6, vmFileCust:Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v7, vmReader:Ljava/io/FileReader;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 142
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 144
    const-string/jumbo v8, "voicemail"

    invoke-static {v4, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 147
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 149
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v8, "voicemail"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    if-nez v8, :cond_1

    .line 167
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #vmReader:Ljava/io/FileReader;
    :goto_2
    return-void

    .line 131
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v7       #vmReader:Ljava/io/FileReader;
    goto :goto_0

    .line 134
    .end local v7           #vmReader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "etc/voicemail-conf.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #vmReader:Ljava/io/FileReader;
    :cond_1
    const/4 v8, 0x3

    :try_start_3
    new-array v0, v8, [Ljava/lang/String;

    .line 155
    .local v0, data:[Ljava/lang/String;
    const/4 v8, 0x0

    const-string/jumbo v9, "numeric"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "carrier"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 157
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v10, "vmnumber"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 158
    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string/jumbo v10, "vmtag"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 160
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 162
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in Voicemail parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 164
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, e:Ljava/io/IOException;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in Voicemail parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 106
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 111
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 116
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoicemailPriorityMode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->voicemailPriorityMode:I

    return v0
.end method

.method setVoicemailPriorityMode()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->voicemailPriorityMode:I

    .line 97
    return-void
.end method
