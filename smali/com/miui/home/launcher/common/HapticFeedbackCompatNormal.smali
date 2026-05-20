.class public Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;
.super Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.source "HapticFeedbackCompatNormal.java"


# direct methods
.method public static synthetic $r8$lambda$craXLV0Cdpuv0b7wXfJFemiRTlw(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->lambda$performEnterEditMode$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYSsULxgOgCv2_AvPS6Rrcvw8q4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->lambda$performStartDrag$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n_LffhbAHQq7SIE2sj_j-fYJb8k(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->lambda$performEnterRecent$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;-><init>()V

    return-void
.end method

.method private static synthetic lambda$performEnterEditMode$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method private static synthetic lambda$performEnterRecent$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method private static synthetic lambda$performStartDrag$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public isSupportEffectGestureBackLinear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public performBoom()V
    .locals 0

    return-void
.end method

.method public performCheckedStateInEditMode(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performClearAllRecentTasks()V
    .locals 0

    return-void
.end method

.method public performClickNavBarTypePreference(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnough()V
    .locals 0

    return-void
.end method

.method public performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    .line 22
    new-instance p2, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterHotSeat(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnterOrCreateFolder(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnterRecent(Landroid/view/View;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performFastScrollSection(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performGestureBackHandUp()V
    .locals 0

    return-void
.end method

.method public performGestureReadyBack()V
    .locals 0

    return-void
.end method

.method public performHold(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performInjectKeyEvent(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performNotEnough()V
    .locals 0

    return-void
.end method

.method public performReadyDrop(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performRecentViewLockChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public performSqueezePosition(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performStartDrag(Landroid/view/View;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performStopScreenPinning(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performUninstall()V
    .locals 0

    return-void
.end method
