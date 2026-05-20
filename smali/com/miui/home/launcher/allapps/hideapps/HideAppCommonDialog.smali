.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
.super Landroid/app/Dialog;
.source "HideAppCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;,
        Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private mHeight:I

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$8k6iV0gubiB_KKnWRY8yALEToDI(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->lambda$createDialog$0(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZW0HuIbAQVDI6wqdKm7sVoNvw8(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->lambda$createDialog$1(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x7f1100d7

    .line 38
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->mGravity:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->createDialog(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object p0

    return-object p0
.end method

.method private addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 3

    .line 58
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static createDialog(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
    .locals 7

    .line 205
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->gravity:I

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;-><init>(Landroid/content/Context;I)V

    .line 206
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->hasAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->animation:I

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->setAnimation(I)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->isCustomView()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 214
    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->customView:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const v2, 0x7f0d0070

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->hasPositiveButton()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    const v2, 0x7f0a00ca

    .line 221
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    new-instance v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonTextColor:I

    if-eq v5, v4, :cond_2

    .line 233
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    :cond_2
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->hasNegativeButton()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0a00c7

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 242
    new-instance v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonTextColor:I

    if-eq v5, v4, :cond_4

    .line 249
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    :cond_4
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    const v2, 0x7f0a03f2

    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    iget v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->title:I

    if-eq v3, v4, :cond_6

    .line 258
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    .line 260
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0a03f1

    .line 263
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    iget v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->contentRes:I

    if-eqz v3, :cond_7

    .line 265
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :cond_7
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 269
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->setContentView(Landroid/view/View;)V

    .line 273
    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->disAmount:F

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->setDisAmount(F)V

    .line 275
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 90
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private static synthetic lambda$createDialog$0(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 226
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->closeAfterCheck:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->closeAfterCheck:Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createDialog$1(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;Landroid/view/View;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setAnimation(I)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method private setDisAmount(F)V
    .locals 0

    .line 280
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->mView:Landroid/view/View;

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->mWidth:I

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->mHeight:I

    .line 82
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
