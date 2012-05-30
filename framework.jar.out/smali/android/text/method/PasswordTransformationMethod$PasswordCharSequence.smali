.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 144
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .parameter "i"

    .prologue
    .line 151
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    .line 152
    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 154
    .local v2, sp:Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 155
    .local v3, st:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 157
    .local v1, en:I
    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    .line 158
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 175
    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    :goto_0
    return v5

    .line 161
    .restart local v1       #en:I
    .restart local v2       #sp:Landroid/text/Spanned;
    .restart local v3       #st:I
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 163
    .local v4, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 164
    aget-object v5, v4, v0

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 165
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 166
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 168
    if-lt p1, v3, :cond_1

    if-ge p1, v1, :cond_1

    .line 169
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_0

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0           #a:I
    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    .end local v4           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v5

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v14, v0, v1, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 194
    .local v5, c:C
    const/16 v14, 0x590

    if-lt v5, v14, :cond_2

    const/16 v14, 0x6ff

    if-gt v5, v14, :cond_2

    .line 195
    const/16 v14, 0x66d

    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod;->access$102(C)C

    .line 202
    .end local v5           #c:C
    :cond_0
    :goto_0
    const/4 v11, -0x1

    .local v11, st:I
    const/4 v6, -0x1

    .line 203
    .local v6, en:I
    const/4 v9, 0x0

    .line 204
    .local v9, nvisible:I
    const/4 v12, 0x0

    .local v12, starts:[I
    const/4 v7, 0x0

    .line 206
    .local v7, ends:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v14, v14, Landroid/text/Spanned;

    if-eqz v14, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 209
    .local v10, sp:Landroid/text/Spanned;
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 210
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 212
    const/4 v14, 0x0

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v15

    const-class v16, Landroid/text/method/PasswordTransformationMethod$Visible;

    move-object/from16 v0, v16

    invoke-interface {v10, v14, v15, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 213
    .local v13, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v9, v13

    .line 214
    new-array v12, v9, [I

    .line 215
    new-array v7, v9, [I

    .line 217
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 218
    aget-object v14, v13, v8

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_1

    .line 219
    aget-object v14, v13, v8

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v12, v8

    .line 220
    aget-object v14, v13, v8

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v7, v8

    .line 217
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 198
    .end local v6           #en:I
    .end local v7           #ends:[I
    .end local v8           #i:I
    .end local v9           #nvisible:I
    .end local v10           #sp:Landroid/text/Spanned;
    .end local v11           #st:I
    .end local v12           #starts:[I
    .end local v13           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    .restart local v5       #c:C
    :cond_2
    const/16 v14, 0x2022

    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod;->access$102(C)C

    goto :goto_0

    .line 225
    .end local v5           #c:C
    .restart local v6       #en:I
    .restart local v7       #ends:[I
    .restart local v9       #nvisible:I
    .restart local v11       #st:I
    .restart local v12       #starts:[I
    :cond_3
    move/from16 v8, p1

    .restart local v8       #i:I
    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_8

    .line 226
    if-lt v8, v11, :cond_4

    if-lt v8, v6, :cond_6

    .line 227
    :cond_4
    const/4 v13, 0x0

    .line 229
    .local v13, visible:Z
    const/4 v4, 0x0

    .local v4, a:I
    :goto_3
    if-ge v4, v9, :cond_5

    .line 230
    aget v14, v12, v4

    if-lt v8, v14, :cond_7

    aget v14, v7, v4

    if-ge v8, v14, :cond_7

    .line 231
    const/4 v13, 0x1

    .line 236
    :cond_5
    if-nez v13, :cond_6

    .line 237
    sub-int v14, v8, p1

    add-int v14, v14, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v15

    aput-char v15, p3, v14

    .line 225
    .end local v4           #a:I
    .end local v13           #visible:Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 229
    .restart local v4       #a:I
    .restart local v13       #visible:Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 241
    .end local v4           #a:I
    .end local v13           #visible:Z
    :cond_8
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 179
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 181
    .local v0, buf:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 182
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
