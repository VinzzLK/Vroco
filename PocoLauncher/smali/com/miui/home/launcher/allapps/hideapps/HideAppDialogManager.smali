.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;
.super Ljava/lang/Object;
.source "HideAppDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;,
        Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$Holder;
    }
.end annotation


# instance fields
.field private mFingerGuideDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

.field private mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

.field private mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

.field private mOpenHideAppsResultFromSettingActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5QGdGW-eolJCO8Xy-L9SAzxpVA0(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$guideFingerprintDialog$5(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8qh7M80iWKE5W4rJcsEqtitwg-U(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$handleCloseHideAppsDialog$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HKQAWQVRU_KA2ebx6bd5YwOJ5qo(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$createFingerprintVerityDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2I7tUmd1_l8UZxcFuY9NgsRAbY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$handleFingerprintDialog$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TNtVIb2NOH0I6ZKxYyogZCm_hEs(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$handleCloseHideAppsDialog$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TxE2-R3K6KKSCl0IjiSyqcWJogE(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$guideFingerprintDialog$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VNtw2XrM8eDwh8Uuh-e-RVO0RLg(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$handleFingerprintDialog$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c7g_g0QVYP2GpXblJuwvlIe_ovg(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$createFingerprintVerityDialog$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHOTiQscURUBrbLy8tMsw6pF3oE(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lD2PVk_AlHajuKoXAodGxC3yOow(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->lambda$handleFingerprintDialog$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mOpenHideAppsResultFromSettingActivityRunnable:Ljava/lang/Runnable;

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    return-object p0
.end method

.method public static calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 237
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    invoke-direct {v1, v3, v5, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private createFingerprintVerityDialog()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->createDialog(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    .line 97
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setBtnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->authenticateHideAppsLock(Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$Holder;->access$100()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object v0

    return-object v0
.end method

.method private guideFingerprintDialog()V
    .locals 4

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x3f19999a    # 0.6f

    .line 121
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setDisAmount(F)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v1

    const/16 v2, 0x50

    .line 122
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setGravity(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f1001b0

    .line 123
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setTitle(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f1001ae

    .line 124
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setContentText(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f100239

    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;Lcom/miui/home/launcher/Launcher;)V

    .line 125
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000c5

    sget-object v2, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda5;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->create()Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerGuideDialog:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    .line 139
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->show()V

    return-void
.end method

.method private synthetic lambda$createFingerprintVerityDialog$3(Landroid/view/View;)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p1

    const-string v0, "cancel_fingerprint_verify_times"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    .line 100
    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    .line 102
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerVerifyDialog:Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createFingerprintVerityDialog$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    return-void
.end method

.method private synthetic lambda$guideFingerprintDialog$5(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x7d0

    const-string v1, "com.android.settings"

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->hasEnrolledFingerprintsHideAppsLock()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.settings.MiuiSecurityChooseUnlock"

    .line 127
    invoke-static {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 128
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings.NewFingerprintActivity"

    .line 130
    invoke-static {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 131
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$guideFingerprintDialog$6(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p0

    const-string v0, "cancel_fingerprint_guide_times"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v1

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, v0, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$handleCloseHideAppsDialog$8(Landroid/view/View;)V
    .locals 0

    .line 250
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->removeHideAppsViewSheet()V

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->clearHideAppsData()V

    return-void
.end method

.method private static synthetic lambda$handleCloseHideAppsDialog$9(Landroid/view/View;)V
    .locals 0

    .line 253
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->removeHideAppsViewSheet()V

    return-void
.end method

.method private synthetic lambda$handleFingerprintDialog$0()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->isHardwareDetectedHideAppsLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->hasEnrolledFingerprintsHideAppsLock()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p0

    const-string v0, "cancel_fingerprint_verify_times"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ge p0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p0

    const-string v0, "cancel_fingerprint_guide_times"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ge p0, v2, :cond_1

    const/4 v1, 0x2

    .line 76
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleFingerprintDialog$1(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->createFingerprintVerityDialog()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->guideFingerprintDialog()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result p0

    if-nez p0, :cond_2

    .line 87
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$handleFingerprintDialog$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFingerprintDialog falied msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideAppDialogManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 1

    .line 222
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mFingerprintHelper:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    .line 223
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->hasEnrolledFingerprintsHideAppsLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->onHideAppsUnLockPasswordAndFingerprintSetSuccess()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->onSettingUnLockPasswordAndFingerprintSetFailed()V

    :goto_0
    return-void
.end method

.method private onSettingUnLockPasswordAndFingerprintSetFailed()V
    .locals 0

    const/4 p0, 0x0

    .line 231
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    return-void
.end method


# virtual methods
.method public handleCloseHideAppsDialog()V
    .locals 2

    .line 244
    new-instance p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x3f19999a    # 0.6f

    .line 245
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setDisAmount(F)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    const/16 v0, 0x50

    .line 246
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setGravity(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f100121

    .line 247
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setTitle(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f100120

    .line 248
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setContentText(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda3;

    const v1, 0x104000a

    .line 249
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda4;

    const/high16 v1, 0x1040000

    .line 253
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->create()Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->show()V

    return-void
.end method

.method public handleFingerprintDialog()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->io()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 79
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)V

    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$$ExternalSyntheticLambda7;

    .line 80
    invoke-virtual {v0, v1, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public onHideAppsSwitchClick(Z)V
    .locals 2

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x7

    .line 45
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->handleFingerprintDialog()V

    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "is_from_close_hide_apps_verify"

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onHideAppsUnLockPasswordAndFingerprintSetSuccess()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 210
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(I)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showAppView()V

    return-void
.end method

.method public runOpenHideAppsRunnable()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->mOpenHideAppsResultFromSettingActivityRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
