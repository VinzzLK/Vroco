.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;
.super Lcom/miui/home/launcher/allapps/hideapps/LinearLayoutWithDefaultTouchRecepient;
.source "HideAppsSetPasswordContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;,
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;,
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;
    }
.end annotation


# static fields
.field public static PASSWORD_MIN_LENGTH:I = 0x4


# instance fields
.field private context:Landroid/content/Context;

.field private isFromResetPassword:Z

.field private mFirstPwd:Ljava/lang/String;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field private mHideAppsSettingPasswordViewEnter:Landroid/view/animation/Animation;

.field private mHideAppsSettingPasswordViewExit:Landroid/view/animation/Animation;

.field private mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field private mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

.field private passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

.field private setPasswordSuccess:Z

.field private titleBar:Landroid/view/View;

.field private titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

.field private titleBarRightBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

.field private titleBarTitleContent:Landroid/widget/TextSwitcher;

.field private unlockDescribe:Landroid/widget/TextView;

.field private unlockTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$4W7RKYfAvwbyvagBmo1lJCk91lQ(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->lambda$onFinishInflate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WLx-D9ChfHf2gkmdvWhSwnk7C_U(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->lambda$updateStage$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$shAkbvilAnTHlZ1uB4vAtpfUTH0(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->lambda$onFinishInflate$1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tNKp1qc4FhLWUH4NrhUb_TKrQNM(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->lambda$onFinishInflate$0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xfdYsUmv0bBYPxm3GjQVbhcu3R8(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->lambda$onFinishInflate$2()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->isFromResetPassword:Z

    .line 69
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->setPasswordSuccess:Z

    .line 131
    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->context:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p2, 0x7f010074

    .line 80
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mHideAppsSettingPasswordViewEnter:Landroid/view/animation/Animation;

    .line 81
    new-instance v0, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const p2, 0x7f010075

    .line 82
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mHideAppsSettingPasswordViewExit:Landroid/view/animation/Animation;

    .line 83
    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFirstPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFirstPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0()Landroid/view/View;
    .locals 2

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$1()Landroid/view/View;
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$2()Landroid/view/View;
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onFinishInflate$3(Landroid/view/View;)V
    .locals 0

    .line 106
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->removeHideAppsViewSheet()V

    return-void
.end method

.method private synthetic lambda$updateStage$4()V
    .locals 1

    .line 234
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->NeedToConfirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->postClearPatternRunnable()V

    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFirstPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->onCreateNoSavedState()V

    const-string p0, "HASetPwdContainerView"

    const-string v0, "password is null"

    .line 290
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFirstPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/net/EncryptUtil;->hexMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->saveHideAppsUnlockPassWord(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->setPasswordSuccess:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->setPasswordSuccess:Z

    .line 302
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->isFromResetPassword:Z

    if-eqz v1, :cond_2

    .line 303
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->setPasswordSuccess:Z

    if-eqz v1, :cond_1

    const v1, 0x7f10025c

    goto :goto_1

    :cond_1
    const v1, 0x7f10025b

    .line 304
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 306
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->removeHideAppsViewSheet()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "is_from_reset_password"

    .line 330
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->isFromResetPassword:Z

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarTitleContent:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10025a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 259
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Retry:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFirstPwd:Ljava/lang/String;

    .line 261
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->clearPattern()V

    .line 262
    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    goto/16 :goto_0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left footer button pressed , but stage of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t make sense"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 268
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    iget-object v0, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Continue:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v2, " when button is "

    const-string v3, "expected ui stage "

    if-ne v0, v1, :cond_3

    .line 269
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->FirstChoiceValid:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-ne p1, v0, :cond_2

    .line 274
    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->NeedToConfirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    goto :goto_0

    .line 270
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceConfirmed:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Confirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 276
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceConfirmed:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-ne p1, v0, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 277
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreateNoSavedState()V
    .locals 1

    .line 187
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    return-void
.end method

.method public onEnter()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 1

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->setPasswordSuccess:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onPasswordSetSuccess()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01de

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBar:Landroid/view/View;

    const v0, 0x7f0a03eb

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarTitleContent:Landroid/widget/TextSwitcher;

    const v0, 0x7f0a00c9

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v0, 0x7f0a00cb

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarRightBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarTitleContent:Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarRightBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarTitleContent:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->titleBarLeftBtn:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01e1

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01e0

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockDescribe:Landroid/widget/TextView;

    const v0, 0x7f0a02c8

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    .line 112
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->initUnlockView()V

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->passwordUnlockMediator:Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->getUnlockView()Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    .line 114
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mHideAppslockUnlockCallback:Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setApplockUnlockCallback(Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setLightMode(Z)V

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const v1, 0x7f0a01ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->onCreateNoSavedState()V

    return-void
.end method

.method public onHide()V
    .locals 0

    .line 344
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 345
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->onCreateNoSavedState()V

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V
    .locals 7

    .line 191
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 192
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->headerMessage:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceTooShort:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-ne p1, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->headerMessage:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->unlockTitle:Landroid/widget/TextView;

    iget v1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :goto_0
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    iget v1, v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    iget-boolean v1, v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->access$500(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->access$600(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    :goto_2
    iget-boolean p1, p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->patternEnabled:Z

    if-eqz p1, :cond_4

    .line 219
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->enableInput()V

    goto :goto_3

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->disableInput()V

    .line 224
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V

    .line 225
    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$3;->$SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsSetPasswordContainerView$Stage:[I

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUiStage:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 246
    :pswitch_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->disableInput()V

    goto :goto_4

    .line 242
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V

    .line 243
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->postClearPatternRunnable()V

    goto :goto_4

    .line 238
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->clearPattern()V

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->enableInput()V

    goto :goto_4

    .line 234
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->clearPattern()V

    goto :goto_4

    .line 230
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;->setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V

    .line 231
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->postClearPatternRunnable()V

    goto :goto_4

    .line 227
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->mUnlockView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;->clearPattern()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
