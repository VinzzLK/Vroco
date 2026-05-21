.class public Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;
.super Landroidx/preference/Preference;
.source "NavBarTypeContainerPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;
    }
.end annotation


# instance fields
.field private mAllNavBarTypeViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/settings/NavigationBarTypeView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

.field private mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

.field private mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

.field private mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

.field private mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;


# direct methods
.method public static synthetic $r8$lambda$JNlvCiY5i5wb1nrRF5IWx4fylo0(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$updateFullScreenViewAnim$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEHo_3FMl7pQn6Gf6KQ-VB2f0_c(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$showDialogToGestureTutorial$4(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5-FNNTuvrJ5SR7z5RfKoBL7XTo(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$showDialogToSetMiuiHomeAsDefault$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLUWnTlmgPZvvrlKlbeJHmiNN7U()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$showDialogToGestureTutorial$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$nevccZF8ZqG4e_r_l8Ai4oe_RrE(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$updateFullScreenViewAnim$0(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    const p1, 0x7f0d0130

    .line 50
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/GestureLearnAlertDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->showDialogToSetMiuiHomeAsDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->showDialogToGestureTutorial()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method private static synthetic lambda$showDialogToGestureTutorial$3()V
    .locals 0

    .line 183
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickLearnBtnEvent()V

    return-void
.end method

.method private synthetic lambda$showDialogToGestureTutorial$4(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 2

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    .line 187
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 188
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v1

    iget-boolean p1, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowNavGuide(Z)V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    .line 190
    invoke-static {}, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->updateCurrentTime()V

    return-void
.end method

.method private synthetic lambda$showDialogToSetMiuiHomeAsDefault$2(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentDefaultHomePackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/home/launcher/Launcher;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.vroco.launcher"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->changeDefaultHomeByRoleManager(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    .line 168
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/miui/home/launcher/Launcher;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$updateFullScreenViewAnim$0(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateFullScreenViewAnim$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getAnimResource(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 107
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private setForceFSGNavBar(Z)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceFSGNavBar, force_fsg_nav_bar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBarTypeContainerPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 198
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, p1, :cond_0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 208
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 209
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setSelected(Z)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    if-eqz p0, :cond_3

    .line 212
    invoke-interface {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;->onNavBarTypeChanged()V

    :cond_3
    return-void
.end method

.method private showDialogToGestureTutorial()V
    .locals 2

    .line 180
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v1, 0x7f100376

    .line 181
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v1, 0x7f100375

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    sget-object v1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickPosButtonRunnable(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const-string v1, "com.miui.systemui.fsgesture.introduce"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    new-instance v1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 192
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private showDialogToSetMiuiHomeAsDefault()V
    .locals 3

    .line 161
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    const v2, 0x7f100398

    .line 163
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100396

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f100399

    .line 174
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 175
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f100397

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private updateFullScreenViewAnim()V
    .locals 2

    .line 104
    new-instance v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateLottieView(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateNavigationViewDrawable(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateLottieViewLayout(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateLottieViewLayout(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method private updateLottieViewLayout(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .line 119
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0705b1

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const v1, 0x7f0705ae

    .line 126
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0705b3

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const v1, 0x7f0705b0

    .line 129
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    goto :goto_0

    :cond_1
    const p1, 0x7f0705b2

    .line 131
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const v1, 0x7f0705af

    .line 132
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    .line 135
    :goto_0
    instance-of v1, p2, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    if-eqz v1, :cond_2

    .line 136
    move-object v1, p2

    check-cast v1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 138
    :cond_2
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNavigationViewDrawable(Landroid/content/Context;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f080659

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f08065b

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 157
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f08065a

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0419

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    const v0, 0x7f0a02a2

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mNavigationLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 60
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a01be

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    const v0, 0x7f0a01bf

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateLottieView(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateSelectedView()V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateFullScreenViewAnim()V

    return-void
.end method

.method public setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    return-void
.end method

.method public updateSelectedView()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    return-void
.end method
