.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 53
    return-void
.end method

.method private static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 275
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 277
    :goto_1
    return v1

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const v0, 0x1090062

    const v1, 0x102016d

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 27
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 94
    .local v19, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v16

    .line 95
    .local v16, locales:[Ljava/lang/String;
    const v25, 0x1070009

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 96
    .local v21, specialLocaleCodes:[Ljava/lang/String;
    const v25, 0x107000a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 97
    .local v22, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 98
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 99
    .local v17, origSize:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v18, v0

    .line 100
    .local v18, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v9, 0x0

    .line 102
    .local v9, finalSize:I
    const/16 v23, 0x0

    .line 103
    .local v23, white_languages:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 106
    .local v24, white_strings:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "white_languages"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 111
    :goto_0
    if-eqz v24, :cond_0

    .line 112
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 116
    :cond_0
    const/4 v4, 0x0

    .line 117
    .local v4, black_languages:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 120
    .local v5, black_strings:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "black_languages"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 124
    :goto_1
    if-eqz v5, :cond_1

    .line 125
    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 128
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    move v10, v9

    .end local v9           #finalSize:I
    .local v10, finalSize:I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    .line 129
    aget-object v20, v16, v11

    .line 130
    .local v20, s:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v14

    .line 131
    .local v14, len:I
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v14, v0, :cond_9

    .line 133
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    move v9, v10

    .line 128
    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    goto :goto_2

    .line 107
    .end local v4           #black_languages:[Ljava/lang/String;
    .end local v5           #black_strings:Ljava/lang/String;
    .end local v10           #finalSize:I
    .end local v11           #i:I
    .end local v14           #len:I
    .end local v20           #s:Ljava/lang/String;
    .restart local v9       #finalSize:I
    :catch_0
    move-exception v8

    .line 108
    .local v8, e:Ljava/lang/Exception;
    const-string v25, "LocalePicker"

    const-string v26, "Could not load default locales"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #black_languages:[Ljava/lang/String;
    .restart local v5       #black_strings:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 122
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v25, "LocalePicker"

    const-string v26, "Could not load default locales"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    .restart local v11       #i:I
    .restart local v14       #len:I
    .restart local v20       #s:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    move v9, v10

    .line 138
    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto :goto_3

    .line 141
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_3
    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, language:Ljava/lang/String;
    const/16 v25, 0x3

    const/16 v26, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, country:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v12, l:Ljava/util/Locale;
    if-nez v10, :cond_4

    .line 149
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v18, v10

    goto :goto_3

    .line 156
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_4
    add-int/lit8 v25, v10, -0x1

    aget-object v25, v18, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 164
    add-int/lit8 v25, v10, -0x1

    aget-object v25, v18, v25

    add-int/lit8 v26, v10, -0x1

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 171
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v18, v10

    goto/16 :goto_3

    .line 177
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_5
    const-string/jumbo v25, "zz_ZZ"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 178
    const-string v7, "Pseudo..."

    .line 185
    .local v7, displayName:Ljava/lang/String;
    :goto_4
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v25

    invoke-direct {v0, v7, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v18, v10

    goto/16 :goto_3

    .line 180
    .end local v7           #displayName:Ljava/lang/String;
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_6
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_4

    .line 191
    .end local v6           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #len:I
    .end local v20           #s:Ljava/lang/String;
    :cond_7
    new-array v15, v10, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 192
    .local v15, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_8

    .line 193
    aget-object v25, v18, v11

    aput-object v25, v15, v11

    .line 192
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 195
    :cond_8
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v15}, Lmiui/util/ExtraLocalePicker;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .line 196
    new-instance v25, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v25

    .end local v15           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v14       #len:I
    .restart local v20       #s:Ljava/lang/String;
    :cond_9
    move v9, v10

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto/16 :goto_3
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 212
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    aget-object v2, p2, v1

    .line 217
    :goto_1
    return-object v2

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 258
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 260
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 263
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 265
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 267
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 224
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 247
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 249
    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 235
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 229
    return-void
.end method
