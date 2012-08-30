.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$AutoFillProfile;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWOFFEnabled:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 7
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 164
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 166
    iput v5, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 167
    const-string/jumbo v3, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 168
    const-string/jumbo v3, "monospace"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 169
    const-string/jumbo v3, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 170
    const-string/jumbo v3, "serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 171
    const-string v3, "cursive"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 172
    const-string v3, "fantasy"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 177
    iput v4, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 178
    iput v4, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 179
    const/16 v3, 0x10

    iput v3, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 180
    const/16 v3, 0xd

    iput v3, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 181
    iput v2, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 182
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 183
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 185
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 187
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 188
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAllowFileAccessFromFileURLs:Z

    .line 190
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 191
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 192
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v3, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 193
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 194
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 195
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 196
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 197
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 198
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 199
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 200
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 202
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 203
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 204
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 205
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 207
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 209
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 210
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 211
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 214
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 215
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 218
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/WebSettings;->mDataPath:Ljava/lang/String;

    .line 222
    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v3, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 223
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v3, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 224
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 225
    iput v5, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 226
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 227
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 229
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 230
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 231
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 232
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 233
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 234
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 235
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 236
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 237
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 238
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 239
    iput-boolean v2, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    .line 240
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    .line 292
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 393
    new-instance v3, Landroid/webkit/WebSettings$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v3, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 394
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 395
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 396
    const v3, 0x10400b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 399
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 400
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sput-object v3, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 403
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 405
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 407
    iget-object v3, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 413
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/webkit/WebSettings;->mDataPath:Ljava/lang/String;

    .line 415
    const-string v1, "WebSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDataPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebSettings;->mDataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 407
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WebSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown setting mDataPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 40
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 468
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 473
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 450
    if-nez p0, :cond_1

    .line 451
    const/4 p0, 0x0

    .line 463
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 453
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-string p0, "he"

    goto :goto_0

    .line 456
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    const-string p0, "id"

    goto :goto_0

    .line 459
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 431
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 435
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 437
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 431
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 11

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    sget-object v10, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 486
    :try_start_1
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 487
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 490
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 491
    .local v8, version:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 492
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 507
    invoke-static {v4}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 510
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 520
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 521
    .local v7, model:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 522
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    .end local v7           #model:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 527
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 528
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104031a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, mobile:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040319

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, base:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 487
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #mobile:Ljava/lang/String;
    .end local v8           #version:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 498
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v8       #version:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 502
    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 515
    .restart local v4       #language:Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1972
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1977
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1974
    .restart local p1
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1975
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1983
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1984
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    :cond_0
    monitor-exit p0

    return-void

    .line 1983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1263
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 1847
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1716
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1717
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1718
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1719
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1720
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1722
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1723
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1722
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1716
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1588
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1575
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 1882
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 1899
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1781
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1072
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1515
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1660
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1498
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1913
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1641
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1560
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 1112
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1744
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1598
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1618
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1053
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 9

    .prologue
    .line 778
    monitor-enter p0

    const/4 v1, 0x0

    .line 779
    .local v1, closestSize:Landroid/webkit/WebSettings$TextSize;
    const v6, 0x7fffffff

    .line 780
    .local v6, smallestDelta:I
    :try_start_0
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    .local v0, arr$:[Landroid/webkit/WebSettings$TextSize;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 781
    .local v5, size:Landroid/webkit/WebSettings$TextSize;
    iget v7, p0, Landroid/webkit/WebSettings;->mTextSize:I

    iget v8, v5, Landroid/webkit/WebSettings$TextSize;->value:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 782
    .local v2, delta:I
    if-nez v2, :cond_0

    .line 790
    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 785
    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    .restart local v2       #delta:I
    .restart local v5       #size:Landroid/webkit/WebSettings$TextSize;
    :cond_0
    if-ge v2, v6, :cond_1

    .line 786
    move v6, v2

    .line 787
    move-object v1, v5

    .line 780
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 790
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_2
    if-eqz v1, :cond_3

    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    :goto_2
    move-object v5, v1

    goto :goto_1

    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    :cond_3
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 778
    .end local v0           #arr$:[Landroid/webkit/WebSettings$TextSize;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 866
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 907
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x1

    .line 914
    :goto_0
    monitor-exit p0

    return v0

    .line 909
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    const/4 v0, 0x2

    goto :goto_0

    .line 911
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 912
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1692
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1695
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1711
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1698
    :cond_1
    const/4 v1, 0x0

    .line 1699
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1700
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1701
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1702
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1703
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1704
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1705
    const/4 v1, 0x1

    .line 1707
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1708
    if-eqz v1, :cond_3

    .line 1709
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1711
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1707
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1692
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1823
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1968
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 642
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 643
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 626
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 627
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1322
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccessFromFileURLs:Z

    .line 1323
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :cond_0
    monitor-exit p0

    return-void

    .line 1321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1301
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 1302
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :cond_0
    monitor-exit p0

    return-void

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1438
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1439
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1440
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    :cond_0
    monitor-exit p0

    return-void

    .line 1438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1464
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1465
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    :cond_0
    monitor-exit p0

    return-void

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "appCachePath"

    .prologue
    .line 1452
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1454
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    :cond_0
    monitor-exit p0

    return-void

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1871
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1872
    .local v0, autoFillEnabled:Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1873
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 1874
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    :cond_0
    monitor-exit p0

    return-void

    .line 1871
    .end local v0           #autoFillEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 1889
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 1890
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 1891
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    :cond_0
    monitor-exit p0

    return-void

    .line 1889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1221
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1222
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1223
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :cond_0
    monitor-exit p0

    return-void

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1246
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 1247
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V

    .line 1248
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    :cond_0
    monitor-exit p0

    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 591
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 592
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1770
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1771
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 1772
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1774
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1061
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 1063
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    :cond_0
    monitor-exit p0

    return-void

    .line 1061
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1475
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1476
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1477
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    :cond_0
    monitor-exit p0

    return-void

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1411
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1412
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1414
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :cond_0
    monitor-exit p0

    return-void

    .line 1411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1164
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1165
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1166
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :cond_0
    monitor-exit p0

    return-void

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1142
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1143
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1144
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1145
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :cond_0
    monitor-exit p0

    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1649
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1651
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    :cond_0
    monitor-exit p0

    return-void

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 821
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 822
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 823
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->adjustDefaultZoomDensity(I)V

    .line 825
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 609
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 610
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1487
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1488
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1489
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    :cond_0
    monitor-exit p0

    return-void

    .line 1487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1917
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1918
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1920
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 1923
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 799
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 800
    iput p1, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 801
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->updateDoubleTapZoom(I)V

    .line 803
    :cond_0
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 674
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 675
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1080
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :cond_0
    monitor-exit p0

    return-void

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1004
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 1006
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :cond_0
    monitor-exit p0

    return-void

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1856
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    monitor-exit p0

    return-void

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1426
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1429
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    :cond_0
    monitor-exit p0

    return-void

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1537
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1538
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1539
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    :cond_0
    monitor-exit p0

    return-void

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1334
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 1335
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    :cond_0
    monitor-exit p0

    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1628
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1629
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1630
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    :cond_0
    monitor-exit p0

    return-void

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1279
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1280
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1281
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    :cond_0
    monitor-exit p0

    return-void

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 965
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 966
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :cond_0
    monitor-exit p0

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 841
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 842
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 656
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 657
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1197
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1198
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1199
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    :cond_0
    monitor-exit p0

    return-void

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1805
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1806
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 1807
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1809
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1100
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1101
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 1102
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 1103
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    :cond_0
    monitor-exit p0

    return-void

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1122
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 1123
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1124
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :cond_0
    monitor-exit p0

    return-void

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 545
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1737
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1738
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 1740
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1184
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1185
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1186
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1187
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1188
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    :cond_2
    monitor-exit p0

    return-void

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1387
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1388
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :cond_0
    monitor-exit p0

    return-void

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1375
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    monitor-exit p0

    return-void

    .line 1375
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1401
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1831
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1832
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 1836
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 1838
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    :cond_0
    monitor-exit p0

    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1929
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->contentInvalidateAll()V

    .line 1932
    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 1754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1755
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1756
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    :cond_0
    monitor-exit p0

    return-void

    .line 1754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1023
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1025
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    :cond_0
    monitor-exit p0

    return-void

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 710
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 711
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 725
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 726
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1042
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 1044
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :cond_0
    monitor-exit p0

    return-void

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1354
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 1355
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    :cond_0
    monitor-exit p0

    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 1792
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1793
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 1794
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1796
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 985
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 987
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    :cond_0
    monitor-exit p0

    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 941
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 942
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :cond_0
    monitor-exit p0

    return-void

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 575
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 576
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 577
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1860
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1861
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 1862
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    :cond_0
    monitor-exit p0

    return-void

    .line 1860
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 4
    .parameter "textZoom"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I

    if-eq v0, p1, :cond_1

    .line 741
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    .line 742
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/WebSettings;->mTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 745
    :cond_0
    iput p1, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 746
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_1
    monitor-exit p0

    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 694
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 922
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 923
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_0
    monitor-exit p0

    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    monitor-enter p0

    const/4 v0, 0x0

    .line 879
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 880
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 883
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 894
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 885
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 886
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 891
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1668
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1669
    :cond_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1670
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1671
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1672
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1673
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1675
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1676
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1677
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 1682
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1683
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1684
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1686
    :cond_2
    monitor-exit p0

    return-void

    .line 1675
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1668
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1679
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWOFFEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1906
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1907
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    .line 1908
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    :cond_0
    monitor-exit p0

    return-void

    .line 1906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1526
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1527
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1528
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    :cond_0
    monitor-exit p0

    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1549
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1550
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 1551
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    :cond_0
    monitor-exit p0

    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method supportTouchOnly()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 1947
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1952
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1954
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 1955
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1958
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 1959
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 1960
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    monitor-exit p0

    return-void

    .line 1947
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
