.class public Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;
.super Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;
.source "PatternPasswordUnlock.java"


# instance fields
.field private isResetPasswordPage:Z

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

.field private mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;


# direct methods
.method public static synthetic $r8$lambda$FaBmO_yTr-zfGfRvdpQ6vyAgC2E(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->lambda$initView$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->isResetPasswordPage:Z

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->isResetPasswordPage:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->verifyPassword(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->isResetPasswordPage:Z

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0081

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0080

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v1, 0x7f0a0249

    .line 49
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    .line 50
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->isResetPasswordPage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFodDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 59
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    new-instance v2, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->setOnPatternListener(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private synthetic lambda$initView$0()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->clearPattern()V

    return-void
.end method

.method private verifyPassword(Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/miui/home/launcher/net/EncryptUtil;->hexMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->getHideAppsUnlockPassWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_1

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->reportFailedUnlockAttempt()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->clearPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->disableInput()V

    return-void
.end method

.method public enableInput()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->enableInput()V

    return-void
.end method

.method public postClearPatternRunnable()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAppPage(Z)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->setAppPage(Z)V

    return-void
.end method

.method public setApplockUnlockCallback(Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    :cond_0
    return-void
.end method

.method public setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setLightMode(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->setLightMode(Z)V

    return-void
.end method

.method public updateColor()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->mLockPatternView:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->isResetPasswordPage:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->updateBitmapForUiMode(Ljava/lang/Boolean;)V

    return-void
.end method
