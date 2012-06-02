.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEND_RETRY_DELAY:I = 0x7d0

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field private static final EVENT_ALERT_TIMEOUT:I = 0x6

.field protected static final EVENT_GET_ICC_SMS_DONE:I = 0xe

.field protected static final EVENT_ICC_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x9

.field protected static final EVENT_IMS_STATE_DONE:I = 0xa

.field protected static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_POST_ALERT:I = 0x4

.field protected static final EVENT_PROCESS_SEND_RETRY:I = 0xb

.field protected static final EVENT_RADIO_ON:I = 0x8

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SMS_ON_ICC:I = 0xd

.field protected static final EVENT_SMS_SENDING_TIMEOUT:I = 0xf

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final EVENT_UPDATE_ICC_MWI:I = 0x14

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field protected static final SMS_SENDING_TIMOUEOUT:I = 0xea60

.field static final TAG:Ljava/lang/String; = "SMS"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field protected static mIms:Z

.field protected static mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field protected static final mRawUri:Landroid/net/Uri;

.field private static mSendRetryDelay:I

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPendingMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mSyncronousSending:Z

.field protected mTrackerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 153
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    .line 154
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .line 168
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 175
    const-string/jumbo v0, "persist.radio.sms_retry_delay"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryDelay:I

    .line 190
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 162
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 163
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 164
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    .line 215
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 1307
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1321
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 241
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 244
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 245
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 246
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 252
    const-string/jumbo v0, "telephony.sms.receive"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 254
    const-string/jumbo v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    .line 257
    const-string/jumbo v0, "persist.radio.sms_sync_sending"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    .line 260
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsReceiveDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    return-void

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v1, v2

    .line 254
    goto :goto_1
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 459
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 461
    return-void
.end method

.method private enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added message to the pending queue. Queue size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1367
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1369
    :cond_0
    monitor-exit v1

    .line 1370
    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1158
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x10403e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 229
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 648
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 650
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 651
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isIms()Z
    .locals 1

    .prologue
    .line 1392
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    return v0
.end method

.method public static isImsSmsEncodingCdma()Z
    .locals 1

    .prologue
    .line 1396
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v0

    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1236
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1237
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1239
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1240
    return-void
.end method

.method private processNextPendingMessage()V
    .locals 4

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1348
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed message from pending queue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1357
    :cond_0
    monitor-exit v1

    .line 1358
    return-void

    .line 1350
    :cond_1
    const-string v0, "SMS"

    const-string v2, "Pending messages list consistency failure detected!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .parameter "tracker"

    .prologue
    const/4 v12, 0x0

    .line 1186
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1188
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1189
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1191
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1192
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1193
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1196
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1198
    .local v11, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v11, :cond_1

    .line 1199
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1200
    const/4 v10, 0x0

    .line 1201
    .local v10, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1202
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 1204
    .restart local v10       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v12, v10, v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v9

    .line 1206
    .local v9, newTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-static {v11, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #count:I
    .end local v7           #i:I
    .end local v9           #newTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 1211
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1212
    :cond_2
    return-void
.end method


# virtual methods
.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "format"

    .prologue
    .line 1281
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "pdu"

    .prologue
    .line 1297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1298
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string/jumbo v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string/jumbo v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "pdu"

    .prologue
    .line 1286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1287
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 482
    return-void
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 14
    .parameter "sms"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 677
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .line 680
    .local v13, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v13, :cond_0

    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_3

    .line 682
    :cond_0
    const/4 v0, 0x1

    new-array v11, v0, [[B

    .line 683
    .local v11, pdus:[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    aput-object v0, v11, v9

    .line 685
    if-eqz v13, :cond_2

    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v1, 0xb84

    if-ne v0, v1, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v8

    .line 704
    .end local v11           #pdus:[[B
    :goto_0
    return v8

    .line 693
    .restart local v11       #pdus:[[B
    :cond_1
    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v11, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_0

    .line 702
    .end local v11           #pdus:[[B
    :cond_3
    iget-object v10, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 703
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v12, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 704
    .local v12, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v5, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    if-eqz v12, :cond_4

    iget v8, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :cond_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v8

    goto :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 4
    .parameter "pdus"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string/jumbo v1, "subscription"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 5
    .parameter "pdus"
    .parameter "port"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 890
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 892
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v2, "subscription"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 279
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract handleGetIccSmsDone(Landroid/os/AsyncResult;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 320
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 451
    :pswitch_0
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMSDispatcher.handleMessage, unknown msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 331
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 332
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMessage;

    .line 338
    .local v5, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v7, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    .line 339
    .local v3, result:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 342
    if-ne v3, v2, :cond_2

    .line 343
    .local v2, handled:Z
    :goto_1
    const/4 v7, 0x0

    invoke-direct {p0, v2, v3, v7}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v2           #handled:Z
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 346
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v7, "SMS"

    const-string v9, "Exception dispatching message"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v7, 0x2

    invoke-direct {p0, v8, v7, v10}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #result:I
    :cond_2
    move v2, v8

    .line 342
    goto :goto_1

    .line 354
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #result:I
    .end local v5           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 358
    :pswitch_3
    const-string v7, "SMS"

    const-string v8, "SMS retry.."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    goto :goto_0

    .line 366
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 370
    :pswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/AlertDialog;

    check-cast v7, Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 374
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 375
    .local v4, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_0

    .line 376
    iget-object v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 377
    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v1

    .line 378
    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v7, "SMS"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 388
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 389
    .restart local v4       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 390
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 394
    :goto_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 399
    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 402
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 403
    .restart local v4       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 404
    :catch_2
    move-exception v1

    .line 405
    .restart local v1       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v7, "SMS"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 412
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateIccAvailability()V

    goto/16 :goto_0

    .line 416
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsOnIcc(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 420
    :pswitch_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetIccSmsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 424
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 425
    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 427
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 428
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MWI update on card failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->storeVoiceMailCount()V

    goto/16 :goto_0

    .line 434
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v6, v7

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 436
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v7, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SMS_SENDING_TIMEOUT, failed tracker is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "blocked size is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    const-string v7, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SMS_SENDING_TIMEOUT, failed tracker is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "blocked size is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 444
    const/16 v7, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 1126
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 1129
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1130
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v2

    .line 1132
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1139
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10403e8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403e9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403ea

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1148
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1149
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1151
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, -0x1

    .line 505
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 506
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 508
    .local v4, sentIntent:Landroid/app/PendingIntent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 509
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v7, v7, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 514
    :goto_0
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_7

    .line 520
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_0

    .line 522
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    if-eqz v4, :cond_2

    .line 527
    :try_start_0
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v7, v10, :cond_1

    .line 528
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 531
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_6

    .line 532
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 533
    .local v3, sendNext:Landroid/content/Intent;
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v3           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v7, :cond_3

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    .line 616
    :cond_3
    :goto_2
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSendComplete: tracker is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 619
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 620
    const/16 v7, 0xf

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 624
    :cond_4
    :goto_3
    return-void

    .line 511
    :cond_5
    const-string v7, "SMS"

    const-string v8, "SmsResponse was null "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    :cond_6
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v7

    goto :goto_1

    .line 550
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 552
    .local v5, ss:I
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v7, :cond_8

    if-eqz v5, :cond_8

    .line 556
    iput v11, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 558
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRetryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mImsRetry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mMessageRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SS= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v5, :cond_9

    .line 568
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2

    .line 569
    :cond_9
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_a

    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v7, v11, :cond_a

    .line 580
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 581
    invoke-virtual {p0, v11, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 582
    .local v2, retryMsg:Landroid/os/Message;
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryDelay:I

    int-to-long v7, v7

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 586
    .end local v2           #retryMsg:Landroid/os/Message;
    :cond_a
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_3

    .line 587
    const/4 v0, 0x1

    .line 589
    .local v0, error:I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_b

    .line 591
    const/4 v0, 0x6

    .line 595
    :cond_b
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 596
    .local v1, fillIn:Landroid/content/Intent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_c

    .line 597
    const-string v8, "errorCode"

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v7, v7, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    :cond_c
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v7, v10, :cond_d

    .line 600
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 603
    :cond_d
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_e

    .line 604
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    :cond_e
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 610
    .end local v1           #fillIn:Landroid/content/Intent;
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v7, :cond_3

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    goto/16 :goto_2

    .line 608
    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method protected abstract handleSmsOnIcc(Landroid/os/AsyncResult;)V
.end method

.method protected isCdmaMo()Z
    .locals 2

    .prologue
    .line 1405
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1410
    :goto_0
    return v0

    .line 1407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1410
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsSmsEncodingCdma()Z

    move-result v0

    goto :goto_0
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 25
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"

    .prologue
    .line 733
    const/16 v21, 0x0

    check-cast v21, [[B

    .line 734
    .local v21, pdus:[[B
    const/4 v9, 0x0

    .line 737
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 738
    .local v22, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 741
    .local v23, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    aput-object v23, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 746
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 747
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 750
    .local v18, oldPduString:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 751
    .local v17, oldPdu:[B
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 752
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    const/4 v3, 0x1

    .line 813
    if-eqz v9, :cond_1

    .end local v17           #oldPdu:[B
    .end local v18           #oldPduString:Ljava/lang/String;
    .end local v22           #refNumber:Ljava/lang/String;
    .end local v23           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 865
    :cond_1
    :goto_1
    return v3

    .line 757
    .restart local v22       #refNumber:Ljava/lang/String;
    .restart local v23       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 760
    const-string v6, "address=? AND reference_number=?"

    .line 761
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v22, v7, v3

    .line 762
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 764
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 765
    .local v10, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    if-eq v10, v3, :cond_4

    .line 767
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    const-string/jumbo v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v3, "address"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string/jumbo v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 775
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 778
    const/4 v3, 0x1

    .line 813
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .line 782
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v21, v0

    .line 783
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v10, :cond_7

    .line 784
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 785
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 787
    .local v11, cursorSequence:I
    if-nez p9, :cond_5

    .line 788
    add-int/lit8 v11, v11, -0x1

    .line 790
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v21, v11

    .line 795
    if-nez v11, :cond_6

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 796
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 783
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 801
    .end local v11           #cursorSequence:I
    :cond_7
    if-eqz p9, :cond_9

    .line 802
    aput-object p1, v21, p4

    .line 808
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_8
    if-eqz p9, :cond_d

    .line 819
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 820
    .local v20, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p5

    if-ge v15, v0, :cond_b

    .line 822
    aget-object v3, v21, v15

    const/4 v4, 0x0

    aget-object v5, v21, v15

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 820
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 804
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v21, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 809
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursorCount:I
    .end local v15           #i:I
    .end local v22           #refNumber:Ljava/lang/String;
    .end local v23           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 810
    .local v14, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMS"

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 811
    const/4 v3, 0x2

    .line 813
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 824
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v10       #cursorCount:I
    .restart local v15       #i:I
    .restart local v20       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #refNumber:Ljava/lang/String;
    .restart local v23       #seqNumber:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 827
    .local v13, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_c

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p2

    invoke-virtual {v3, v13, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 831
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v21, v0

    .line 832
    const/4 v3, 0x0

    aput-object v13, v21, v3

    .line 834
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 835
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 840
    .end local v13           #datagram:[B
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_11

    .line 841
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_10

    .line 843
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 845
    .restart local v20       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x0

    .line 846
    .local v19, oriaddress:Ljava/lang/String;
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, p5

    if-ge v15, v0, :cond_f

    .line 847
    aget-object v3, v21, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 848
    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 849
    .local v12, data:[B
    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 850
    add-int/lit8 v3, p5, -0x1

    if-ne v15, v3, :cond_e

    .line 851
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    .line 846
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 855
    .end local v12           #data:[B
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 859
    .end local v19           #oriaddress:Ljava/lang/String;
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 865
    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 863
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_6
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v15, v1, 0xff

    .line 996
    .local v15, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 997
    .local v14, msgCount:I
    const/4 v6, 0x0

    .line 999
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1001
    new-array v12, v14, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 1002
    .local v12, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_2

    .line 1003
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v11

    .line 1004
    .local v11, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 1007
    :cond_0
    iget v6, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1009
    :cond_1
    aput-object v11, v12, v13

    .line 1002
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1012
    .end local v11           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_7

    .line 1013
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1014
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v15, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1015
    add-int/lit8 v1, v13, 0x1

    iput v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1016
    iput v14, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1023
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1024
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1025
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1028
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 1029
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1030
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1033
    :cond_3
    const/4 v7, 0x0

    .line 1034
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_4

    .line 1035
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1038
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 1039
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_5

    .line 1040
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1043
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 1012
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1043
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1047
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    const/4 v7, 0x4

    .line 1078
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1079
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 1081
    .local v2, pdu:[B
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1082
    .local v3, sentIntent:Landroid/app/PendingIntent;
    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v5, :cond_2

    .line 1083
    if-eqz v3, :cond_0

    .line 1085
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1088
    :cond_0
    :goto_0
    const-string v5, "SMS"

    const-string v6, "Device does not support sending sms."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    :goto_1
    return-void

    .line 1092
    :cond_2
    if-nez v2, :cond_3

    .line 1093
    if-eqz v3, :cond_1

    .line 1095
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1096
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1101
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 1104
    .local v4, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    .line 1105
    invoke-static {v4, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1107
    :cond_4
    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, appName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1109
    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v5, :cond_5

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1112
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1115
    :cond_6
    invoke-virtual {p0, v7, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1086
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #ss:I
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method protected abstract sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 1
    .parameter "tracker"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected storeVoiceMailCount()V
    .locals 7

    .prologue
    .line 1374
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, imsi:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v2

    .line 1377
    .local v2, mwi:I
    const-string v5, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Storing Voice Mail Count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for imsi = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for mVmCountKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " vmId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in preferences."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1384
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1385
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmCountKey:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1386
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmId:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1389
    return-void
.end method

.method protected abstract updateIccAvailability()V
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 269
    instance-of v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    const-string v0, "CDMA"

    .line 272
    .local v0, phoneType:Ljava/lang/String;
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active phone changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 269
    .end local v0           #phoneType:Ljava/lang/String;
    :cond_0
    const-string v0, "GSM"

    goto :goto_0
.end method
