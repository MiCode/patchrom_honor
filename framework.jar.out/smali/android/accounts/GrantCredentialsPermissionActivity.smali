.class public Landroid/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRAS_ACCOUNT_TYPE_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field public static final EXTRAS_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabel"

.field public static final EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final EXTRAS_PACKAGES:Ljava/lang/String; = "application"

.field public static final EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final EXTRAS_RESPONSE:Ljava/lang/String; = "response"

.field static final LOG_TAG:Ljava/lang/String; = "GrantCredentialsPermissionActivity"


# instance fields
.field private final accountManagerService:Landroid/accounts/AccountManagerService;

.field private mAccount:Landroid/accounts/Account;

.field private mAuthTokenType:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mResultBundle:Landroid/os/Bundle;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 57
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->accountManagerService:Landroid/accounts/AccountManagerService;

    return-void
.end method

.method private newPackageView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "packageLabel"

    .prologue
    .line 152
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, view:Landroid/view/View;
    const v1, 0x10202cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 186
    .local v1, response:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 188
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 194
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 195
    return-void

    .line 191
    :cond_1
    const/4 v2, 0x4

    const-string v3, "canceled"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 173
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->accountManagerService:Landroid/accounts/AccountManagerService;

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, result:Landroid/content/Intent;
    const-string/jumbo v1, "retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 168
    .end local v0           #result:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->accountManagerService:Landroid/accounts/AccountManagerService;

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x102026f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v14, 0x1090042

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setContentView(I)V

    .line 62
    const v14, 0x1040438

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setTitle(I)V

    .line 64
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 67
    .local v5, extras:Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 69
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v14, "account"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    .line 76
    const-string v14, "authTokenType"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    .line 77
    const-string/jumbo v14, "uid"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 79
    .local v12, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    if-eqz v14, :cond_1

    if-nez v9, :cond_2

    .line 83
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->accountManagerService:Landroid/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/accounts/AccountManagerService;->getAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    .local v1, accountTypeLabel:Ljava/lang/String;
    const v14, 0x102026c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    .local v3, authTokenTypeView:Landroid/widget/TextView;
    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    new-instance v13, Landroid/accounts/GrantCredentialsPermissionActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity$1;-><init>(Landroid/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .line 129
    .local v13, response:Landroid/accounts/IAccountManagerResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->accountManagerService:Landroid/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Landroid/accounts/AccountManagerService;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 132
    const v14, 0x1020270

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v14, 0x102026f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v14, 0x1020268

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 137
    .local v10, packagesListView:Landroid/widget/LinearLayout;
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v11, v2, v6

    .line 140
    .local v11, pkg:Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v12, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 144
    .local v8, packageLabel:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/accounts/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    .end local v1           #accountTypeLabel:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #authTokenTypeView:Landroid/widget/TextView;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #packageLabel:Ljava/lang/String;
    .end local v10           #packagesListView:Landroid/widget/LinearLayout;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v13           #response:Landroid/accounts/IAccountManagerResponse;
    :catch_0
    move-exception v4

    .line 93
    .local v4, e:Ljava/lang/NullPointerException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 95
    const-string v14, "GrantCredentialsPermissionActivity"

    const-string v15, "accountManagerService == null?"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 97
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 99
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 141
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #accountTypeLabel:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #authTokenTypeView:Landroid/widget/TextView;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #packagesListView:Landroid/widget/LinearLayout;
    .restart local v11       #pkg:Ljava/lang/String;
    .restart local v13       #response:Landroid/accounts/IAccountManagerResponse;
    :catch_2
    move-exception v4

    .line 142
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v11

    .restart local v8       #packageLabel:Ljava/lang/String;
    goto :goto_2

    .line 147
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #packageLabel:Ljava/lang/String;
    .end local v11           #pkg:Ljava/lang/String;
    :cond_3
    const v14, 0x102026b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v14, 0x102026a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 177
    return-void
.end method
