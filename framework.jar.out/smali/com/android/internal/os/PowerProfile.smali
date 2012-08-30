.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final LOG_TAG:Ljava/lang/String; = "PowerProfile"

.field private static final PATH_CFG:Ljava/lang/String; = "data/cust/xml/power_profile.xml"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 170
    :cond_0
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 174
    const/4 v12, 0x0

    .line 175
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    .line 176
    .local v9, instream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    const-string v18, "data/cust/xml/power_profile.xml"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v4, custfile:Ljava/io/File;
    const-string v18, "PowerProfile"

    const-string v19, "CUST path = data/cust/xml/power_profile.xml"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    .line 179
    .local v5, doesExistCustPowerProfile:Z
    const-string v18, "PowerProfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doesExistCustPowerProfile = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v5, :cond_4

    .line 183
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    const-string v18, "data/cust/xml/power_profile.xml"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v9           #instream:Ljava/io/InputStream;
    .local v10, instream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 185
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    move-object v9, v10

    .line 199
    .end local v10           #instream:Ljava/io/InputStream;
    .restart local v9       #instream:Ljava/io/InputStream;
    :goto_0
    const/4 v14, 0x0

    .line 200
    .local v14, parsingArray:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 204
    .local v3, arrayName:Ljava/lang/String;
    :try_start_2
    const-string v18, "device"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_1
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 209
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, element:Ljava/lang/String;
    if-nez v7, :cond_5

    .line 239
    if-eqz v14, :cond_1

    .line 240
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 248
    :cond_1
    instance-of v0, v12, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 249
    check-cast v12, Landroid/content/res/XmlResourceParser;

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 252
    :cond_2
    if-eqz v9, :cond_3

    .line 253
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 260
    :cond_3
    :goto_2
    return-void

    .line 186
    .end local v2           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3           #arrayName:Ljava/lang/String;
    .end local v7           #element:Ljava/lang/String;
    .end local v14           #parsingArray:Z
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v6

    .line 187
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v18, "PowerProfile"

    const-string v19, "loadCustPowerProfile caught "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 189
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v18, "PowerProfile"

    const-string v19, "loadCustPowerProfile caught "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    const v8, 0x10f000a

    .line 194
    .local v8, id:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 195
    .local v13, parsergoogle:Landroid/content/res/XmlResourceParser;
    move-object v12, v13

    .line 196
    const-string v18, "PowerProfile"

    const-string v19, "custpowerprofile does not exit, use google\'s powerprofile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v8           #id:I
    .end local v13           #parsergoogle:Landroid/content/res/XmlResourceParser;
    .restart local v2       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3       #arrayName:Ljava/lang/String;
    .restart local v7       #element:Ljava/lang/String;
    .restart local v14       #parsingArray:Z
    :cond_5
    if-eqz v14, :cond_6

    :try_start_4
    const-string/jumbo v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 214
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v14, 0x0

    .line 217
    :cond_6
    const-string v18, "array"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 218
    const/4 v14, 0x1

    .line 219
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 220
    const/16 v18, 0x0

    const-string/jumbo v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 221
    :cond_7
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string/jumbo v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 222
    :cond_8
    const/4 v11, 0x0

    .line 223
    .local v11, name:Ljava/lang/String;
    if-nez v14, :cond_9

    const/16 v18, 0x0

    const-string/jumbo v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    :cond_9
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 225
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v15

    .line 226
    .local v15, power:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 228
    .local v16, value:D
    :try_start_5
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v16

    .line 231
    :goto_5
    :try_start_6
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 232
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 242
    .end local v7           #element:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v15           #power:Ljava/lang/String;
    .end local v16           #value:D
    :catch_2
    move-exception v6

    .line 243
    .restart local v6       #e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 248
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v18

    instance-of v0, v12, Landroid/content/res/XmlResourceParser;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 249
    check-cast v12, Landroid/content/res/XmlResourceParser;

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 252
    :cond_a
    if-eqz v9, :cond_b

    .line 253
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 257
    :cond_b
    :goto_6
    throw v18

    .line 233
    .restart local v7       #element:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #power:Ljava/lang/String;
    .restart local v16       #value:D
    :cond_c
    if-eqz v14, :cond_0

    .line 234
    :try_start_9
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    .line 244
    .end local v7           #element:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v15           #power:Ljava/lang/String;
    .end local v16           #value:D
    :catch_3
    move-exception v6

    .line 245
    .local v6, e:Ljava/io/IOException;
    :try_start_a
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 255
    .end local v6           #e:Ljava/io/IOException;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #element:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 256
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "PowerProfile"

    const-string v19, "Close Input stream error!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 255
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #element:Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 256
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "PowerProfile"

    const-string v20, "Close Input stream error!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 229
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #element:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #power:Ljava/lang/String;
    .restart local v16       #value:D
    :catch_6
    move-exception v18

    goto :goto_5

    .line 188
    .end local v2           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3           #arrayName:Ljava/lang/String;
    .end local v7           #element:Ljava/lang/String;
    .end local v9           #instream:Ljava/io/InputStream;
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #parsingArray:Z
    .end local v15           #power:Ljava/lang/String;
    .end local v16           #value:D
    .restart local v10       #instream:Ljava/io/InputStream;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10           #instream:Ljava/io/InputStream;
    .restart local v9       #instream:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 186
    .end local v9           #instream:Ljava/io/InputStream;
    .restart local v10       #instream:Ljava/io/InputStream;
    :catch_8
    move-exception v6

    move-object v9, v10

    .end local v10           #instream:Ljava/io/InputStream;
    .restart local v9       #instream:Ljava/io/InputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 3
    .parameter "type"

    .prologue
    .line 268
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, data:Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 276
    :goto_0
    return-wide v1

    .line 273
    .restart local v0       #data:Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 276
    .end local v0           #data:Ljava/lang/Object;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .locals 5
    .parameter "type"
    .parameter "level"

    .prologue
    const-wide/16 v2, 0x0

    .line 289
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, data:Ljava/lang/Object;
    instance-of v4, v0, [Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 292
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 293
    .local v1, values:[Ljava/lang/Double;
    array-length v4, v1

    if-le v4, p2, :cond_1

    if-ltz p2, :cond_1

    .line 294
    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 304
    .end local v1           #values:[Ljava/lang/Double;
    :cond_0
    :goto_0
    return-wide v2

    .line 295
    .restart local v1       #values:[Ljava/lang/Double;
    :cond_1
    if-ltz p2, :cond_0

    .line 298
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 301
    .end local v1           #values:[Ljava/lang/Double;
    .restart local v0       #data:Ljava/lang/Object;
    :cond_2
    check-cast v0, Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getBatteryCapacity()D
    .locals 2

    .prologue
    .line 314
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumSpeedSteps()I
    .locals 3

    .prologue
    .line 322
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string v2, "cpu.speeds"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 324
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 326
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
