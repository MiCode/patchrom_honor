.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;
.super Ljava/lang/Object;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 126
    return-void
.end method
