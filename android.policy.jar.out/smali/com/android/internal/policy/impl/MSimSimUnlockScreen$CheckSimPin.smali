.class abstract Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "MSimSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 121
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z

    move-result v1

    .line 123
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
