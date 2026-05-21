.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
.super Landroid/widget/RelativeLayout;
.source "HideAppsUnlockContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;,
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

.field private isFromCloseHideAppsVerify:Z

.field private isFromForgetPassword:Z

.field private launcher:Lcom/miui/home/launcher/Launcher;

.field private mFingerprintEnableListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

.field private mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

.field private mFingerprintIcon:Landroid/widget/ImageView;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mForgetPassword:Landroid/widget/TextView;

.field private mHeadTextView:Landroid/widget/TextView;

.field private mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

.field private mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

.field private mIsRegisterFingerprint:Z

.field private mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

.field private passwordInProgress:Z

.field private passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;


# direct methods
.method public static synthetic $r8$lambda$7Y9dlVUFU35FT87W2HhlJLRDetU(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->lambda$onFinishInflate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M3pyU-liVwEvW5ySpfRGBX9yZDM(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->lambda$initForgetPasswordDialog$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYi-3KV7x5QhubGHC4QoG0gbRq8(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->lambda$initForgetPasswordDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordInProgress:Z

    .line 56
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromCloseHideAppsVerify:Z

    .line 57
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromForgetPassword:Z

    .line 289
    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintEnableListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    .line 381
    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->context:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    .line 77
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->initForgetPasswordDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->accessLockPattern()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromCloseHideAppsVerify:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->launcher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromForgetPassword:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordInProgress:Z

    return p0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordInProgress:Z

    return p1
.end method

.method private accessLockPattern()V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromCloseHideAppsVerify:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->handleCloseHideAppsDialog()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToContentContainerView()V

    :goto_0
    return-void
.end method

.method private checkIfScreenLock()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->isHardwareDetectedHideAppsLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    .line 187
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->hasEnrolledFingerprintsHideAppsLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->context:Landroid/content/Context;

    .line 188
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 189
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    :cond_1
    return-void
.end method

.method private forgetPasswordDialog()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->initForgetPasswordDialog()V

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->show()V

    return-void
.end method

.method private initForgetPasswordDialog()V
    .locals 5

    .line 82
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1003da

    .line 83
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setTitle(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "global-poco@xiaomi.com"

    aput-object v4, v2, v3

    const v3, 0x7f1003d9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setContent(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    const v2, 0x104000a

    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->create()Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    .line 89
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private isOpenFingerprint()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->isHardwareDetectedHideAppsLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    .line 305
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->hasEnrolledFingerprintsHideAppsLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFingerprintEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->context:Landroid/content/Context;

    .line 307
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initForgetPasswordDialog$0(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1003da

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "global-poco@xiaomi.com"

    const-string v0, ""

    .line 86
    invoke-static {p1, p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initForgetPasswordDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->onForgetPasswordBtnClick()V

    return-void
.end method

.method private onForgetPasswordBtnClick()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/XiaoMiAccountUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 352
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromForgetPassword:Z

    .line 353
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, v2, p0}, Lcom/miui/home/launcher/allapps/hideapps/XiaoMiAccountUtils;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private resetViewUiMode()V
    .locals 3

    .line 249
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060049

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060055

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060048

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V
    .locals 2

    .line 315
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$4;->$SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsUnlockContainerView$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 336
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const v0, 0x7f1002b0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->shakeViolent(Landroid/view/View;)V

    goto :goto_1

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->postClearPatternRunnable()V

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V

    .line 329
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const v0, 0x7f1002b1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->shakeViolent(Landroid/view/View;)V

    goto :goto_1

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->clearPattern()V

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFodDevice()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 323
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isOpenFingerprint()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public initialize(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "is_from_close_hide_apps_verify"

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromCloseHideAppsVerify:Z

    if-eqz p1, :cond_1

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    const p1, 0x7f100253

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public isInLockPattern(Landroid/view/MotionEvent;)Z
    .locals 1

    const v0, 0x7f0a0249

    .line 430
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    if-eqz p0, :cond_0

    .line 432
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 279
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 280
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintEnableListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->registerFingerprintEnableListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 285
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 286
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintEnableListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->unRegisterFingerprintEnableListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onEnter()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isOpenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->checkIfScreenLock()V

    .line 225
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromCloseHideAppsVerify:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordInProgress:Z

    if-nez p0, :cond_1

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->handleFingerprintDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 260
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a02c8

    .line 262
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    .line 263
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->initUnlockView()V

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->getUnlockView()Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    .line 265
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setApplockUnlockCallback(Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;)V

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setLightMode(Z)V

    const v0, 0x7f0a01d0

    .line 267
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01af

    .line 268
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0187

    .line 269
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mForgetPassword:Landroid/widget/TextView;

    .line 272
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 214
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 216
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    .line 206
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    .line 207
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isOpenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isFromForgetPassword:Z

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    :cond_0
    return-void
.end method

.method public registerFingerprint()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mIsRegisterFingerprint:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isOpenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mIsRegisterFingerprint:Z

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->authenticateHideAppsLock(Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->forgetPasswordDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 242
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->resetViewUiMode()V

    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordInProgress:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->isInLockPattern(Landroid/view/MotionEvent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public unregisterFingerprint()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mIsRegisterFingerprint:Z

    .line 181
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    return-void
.end method

.method public updateColorForUiMode()V
    .locals 3

    .line 417
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060049

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintIcon:Landroid/widget/ImageView;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060055

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060048

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->mFingerprintIcon:Landroid/widget/ImageView;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->updateColor()V

    return-void
.end method
