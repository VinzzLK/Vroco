.class public Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;
.super Ljava/lang/Object;
.source "FingerprintConfirmDialog.java"


# instance fields
.field private mBtnCancel:Landroid/widget/TextView;

.field private mFingerDialogMessage:Landroid/widget/TextView;

.field private mFingerprintDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

.field private mFingerprintIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    const v0, 0x7f0a0107

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerDialogMessage:Landroid/widget/TextView;

    const v0, 0x7f0a00c7

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mBtnCancel:Landroid/widget/TextView;

    const v0, 0x7f0a0106

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFodDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->getFodLoc()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintIcon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintIcon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintIcon:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;
    .locals 2

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFodDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d003d

    goto :goto_0

    :cond_0
    const v0, 0x7f0d003c

    .line 76
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x50

    .line 77
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setGravity(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    const v1, 0x3f19999a    # 0.6f

    .line 78
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setDisAmount(F)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setCustomView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->create()Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object p0

    .line 82
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setBtnCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mBtnCancel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessageText(I)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->mFingerprintDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->show()V

    return-void
.end method
