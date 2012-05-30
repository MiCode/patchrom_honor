.class public Lcom/android/server/FmcStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FmcStateMachine$2;,
        Lcom/android/server/FmcStateMachine$FmcStateFailure;,
        Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;,
        Lcom/android/server/FmcStateMachine$FmcStateDataDown;,
        Lcom/android/server/FmcStateMachine$FmcStateBearerDown;,
        Lcom/android/server/FmcStateMachine$FmcStateShutDown;,
        Lcom/android/server/FmcStateMachine$FmcStateActive;,
        Lcom/android/server/FmcStateMachine$FmcStateRegistered;,
        Lcom/android/server/FmcStateMachine$FmcStateBearerUp;,
        Lcom/android/server/FmcStateMachine$FmcStateStart;,
        Lcom/android/server/FmcStateMachine$FmcStateInactive;,
        Lcom/android/server/FmcStateMachine$FmcState;,
        Lcom/android/server/FmcStateMachine$FmcTimerCallback;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final DS_FMC_APP_FMC_BEARER_DISABLED:I = 0x0

.field protected static final DS_FMC_APP_FMC_BEARER_ENABLED:I = 0x1

.field protected static final DS_FMC_APP_FMC_BEARER_INVALID:I = -0x1

.field protected static final DS_FMC_APP_FMC_BEARER_MAX:I = 0x2

.field protected static final FMC_DEFAULT_TIMEOUT:I = 0x4e20

.field protected static final FMC_MSG_BEARER_DOWN:I = 0x4

.field protected static final FMC_MSG_BEARER_UP:I = 0x3

.field protected static final FMC_MSG_DATA_DISABLED:I = 0x6

.field protected static final FMC_MSG_DATA_ENABLED:I = 0x5

.field protected static final FMC_MSG_FAILURE:I = 0x0

.field protected static final FMC_MSG_START:I = 0x1

.field protected static final FMC_MSG_STOP:I = 0x2

.field protected static final FMC_MSG_TIMEOUT:I = 0x9

.field protected static final FMC_MSG_WIFI_DOWN:I = 0x8

.field protected static final FMC_MSG_WIFI_UP:I = 0x7

.field private static final TAG:Ljava/lang/String; = "FmcStateMachine"

.field protected static fmcComRead:Lcom/android/server/FmcCom;

.field protected static fmcComReadThread:Ljava/lang/Thread;

.field protected static fmcComSend:Lcom/android/server/FmcCom;

.field protected static fmcComSendThread:Ljava/lang/Thread;

.field protected static fmcTimer:Lcom/android/server/FmcTimer;

.field protected static instance:Lcom/android/server/FmcStateMachine;

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mConnManager:Landroid/net/ConnectivityManager;

.field protected static mConnSvc:Lcom/android/server/ConnectivityService;

.field protected static mContext:Landroid/content/Context;

.field private static mDestIp:[B

.field private static mFmcStatus:I

.field protected static mListener:Landroid/net/IFmcEventListener;

.field private static mNetworkInfo:Landroid/net/NetworkInfo;

.field private static mUserShutDown:Z

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field protected static sendQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static wlanDefault:Landroid/net/RouteInfo;


# instance fields
.field private mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;

.field private mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    sput v1, Lcom/android/server/FmcStateMachine;->mFmcStatus:I

    .line 70
    sput-object v0, Lcom/android/server/FmcStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    sput-object v0, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    .line 74
    sput-object v0, Lcom/android/server/FmcStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    sput-object v0, Lcom/android/server/FmcStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 76
    sput-object v0, Lcom/android/server/FmcStateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    .line 78
    sput-boolean v1, Lcom/android/server/FmcStateMachine;->mUserShutDown:Z

    .line 94
    sput-object v0, Lcom/android/server/FmcStateMachine;->mContext:Landroid/content/Context;

    .line 95
    sput-object v0, Lcom/android/server/FmcStateMachine;->mListener:Landroid/net/IFmcEventListener;

    .line 96
    sput-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    .line 97
    sput-object v0, Lcom/android/server/FmcStateMachine;->instance:Lcom/android/server/FmcStateMachine;

    .line 101
    sput-object v0, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    .line 103
    sput-object v0, Lcom/android/server/FmcStateMachine;->fmcComSend:Lcom/android/server/FmcCom;

    .line 104
    sput-object v0, Lcom/android/server/FmcStateMachine;->fmcComRead:Lcom/android/server/FmcCom;

    .line 105
    sput-object v0, Lcom/android/server/FmcStateMachine;->fmcComSendThread:Ljava/lang/Thread;

    .line 106
    sput-object v0, Lcom/android/server/FmcStateMachine;->fmcComReadThread:Ljava/lang/Thread;

    .line 107
    sput-object v0, Lcom/android/server/FmcStateMachine;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    sput-object v0, Lcom/android/server/FmcStateMachine;->fmcTimer:Lcom/android/server/FmcTimer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IFmcEventListener;Lcom/android/server/ConnectivityService;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "connSvc"

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v1, "FmcStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 80
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

    .line 81
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;

    .line 82
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;

    .line 83
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;

    .line 84
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;

    .line 85
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 86
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 87
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 88
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;

    .line 89
    iput-object v2, p0, Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;

    .line 266
    new-instance v1, Lcom/android/server/FmcStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$1;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    const-string v1, "FmcStateMachine"

    const-string v2, "constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sput-object p1, Lcom/android/server/FmcStateMachine;->mContext:Landroid/content/Context;

    .line 155
    sput-object p2, Lcom/android/server/FmcStateMachine;->mListener:Landroid/net/IFmcEventListener;

    .line 156
    sput-object p3, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    .line 157
    sget-object v1, Lcom/android/server/FmcStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/server/FmcStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 158
    sget-object v1, Lcom/android/server/FmcStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/android/server/FmcStateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    .line 159
    sget-object v1, Lcom/android/server/FmcStateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    sput-object v1, Lcom/android/server/FmcStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 162
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lcom/android/server/FmcStateMachine;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    .line 164
    new-instance v1, Lcom/android/server/FmcComSend;

    sget-object v2, Lcom/android/server/FmcStateMachine;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v1, p0, v2}, Lcom/android/server/FmcComSend;-><init>(Lcom/android/server/FmcStateMachine;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/server/FmcStateMachine;->fmcComSend:Lcom/android/server/FmcCom;

    .line 165
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/android/server/FmcStateMachine;->fmcComSend:Lcom/android/server/FmcCom;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/server/FmcStateMachine;->fmcComSendThread:Ljava/lang/Thread;

    .line 167
    new-instance v1, Lcom/android/server/FmcComRead;

    invoke-direct {v1, p0}, Lcom/android/server/FmcComRead;-><init>(Lcom/android/server/FmcStateMachine;)V

    sput-object v1, Lcom/android/server/FmcStateMachine;->fmcComRead:Lcom/android/server/FmcCom;

    .line 168
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/android/server/FmcStateMachine;->fmcComRead:Lcom/android/server/FmcCom;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/server/FmcStateMachine;->fmcComReadThread:Ljava/lang/Thread;

    .line 171
    invoke-static {}, Lcom/android/server/FmcTimer;->create()Lcom/android/server/FmcTimer;

    move-result-object v1

    sput-object v1, Lcom/android/server/FmcStateMachine;->fmcTimer:Lcom/android/server/FmcTimer;

    .line 174
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateInactive;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

    .line 175
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateStart;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;

    .line 176
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;

    .line 177
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateRegistered;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateRegistered;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;

    .line 178
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateActive;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateActive;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;

    .line 179
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateShutDown;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 180
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 181
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateDataDown;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateDataDown;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;

    .line 182
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;

    .line 183
    new-instance v1, Lcom/android/server/FmcStateMachine$FmcStateFailure;

    invoke-direct {v1, p0}, Lcom/android/server/FmcStateMachine$FmcStateFailure;-><init>(Lcom/android/server/FmcStateMachine;)V

    iput-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;

    .line 185
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 186
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 189
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 190
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 192
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

    invoke-virtual {p0, v1}, Lcom/android/server/FmcStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lcom/android/server/FmcStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FmcStateMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    return-void
.end method

.method static synthetic access$000()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/FmcStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/FmcStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/FmcStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/FmcStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/android/server/FmcStateMachine;->mFmcStatus:I

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/FmcStateMachine;->mUserShutDown:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/FmcStateMachine;->mUserShutDown:Z

    return p0
.end method

.method static synthetic access$500()[B
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;

    return-object v0
.end method

.method static create(Landroid/content/Context;Landroid/net/IFmcEventListener;Lcom/android/server/ConnectivityService;)Lcom/android/server/FmcStateMachine;
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "connSvc"

    .prologue
    .line 216
    const-string v0, "FmcStateMachine"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/android/server/FmcStateMachine;->instance:Lcom/android/server/FmcStateMachine;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "FmcStateMachine"

    const-string v1, "create instance object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Lcom/android/server/FmcStateMachine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/FmcStateMachine;-><init>(Landroid/content/Context;Landroid/net/IFmcEventListener;Lcom/android/server/ConnectivityService;)V

    sput-object v0, Lcom/android/server/FmcStateMachine;->instance:Lcom/android/server/FmcStateMachine;

    .line 221
    sget-object v0, Lcom/android/server/FmcStateMachine;->instance:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v0}, Lcom/android/server/FmcStateMachine;->start()V

    .line 227
    :goto_0
    sget-object v0, Lcom/android/server/FmcStateMachine;->instance:Lcom/android/server/FmcStateMachine;

    return-object v0

    .line 223
    :cond_0
    const-string v0, "FmcStateMachine"

    const-string v1, "create instance object is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sput-object p1, Lcom/android/server/FmcStateMachine;->mListener:Landroid/net/IFmcEventListener;

    goto :goto_0
.end method


# virtual methods
.method final getStatus()I
    .locals 3

    .prologue
    .line 261
    const-string v0, "FmcStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatus status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FmcStateMachine;->mFmcStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget v0, Lcom/android/server/FmcStateMachine;->mFmcStatus:I

    return v0
.end method

.method protected setDestIp([B)V
    .locals 4
    .parameter "destIp"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDestIp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sput-object p1, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/FmcStateMachine;->mDestIp:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, debug:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDestIp (exit) mDestIp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method final startFmc()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 232
    const-string v1, "FmcStateMachine"

    const-string v2, "startFmc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    sget-object v1, Lcom/android/server/FmcStateMachine;->fmcComSendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    sget-object v1, Lcom/android/server/FmcStateMachine;->fmcComSendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_0
    sget-object v1, Lcom/android/server/FmcStateMachine;->fmcComReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    sget-object v1, Lcom/android/server/FmcStateMachine;->fmcComReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    .line 247
    return v4

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const-string v1, "FmcStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFmc IllegalThreadStateException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final stopFmc()Z
    .locals 2

    .prologue
    .line 252
    const-string v0, "FmcStateMachine"

    const-string v1, "stopFmc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    .line 256
    const/4 v0, 0x1

    return v0
.end method
