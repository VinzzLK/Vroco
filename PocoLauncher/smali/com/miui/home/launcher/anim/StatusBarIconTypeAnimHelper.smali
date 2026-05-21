.class public final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;
.super Ljava/lang/Object;
.source "StatusBarIconTypeAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

.field private static mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field private static mCurrentPackage:Ljava/lang/String;

.field private static final mFinishRunnable:Ljava/lang/Runnable;

.field private static mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static mIcon:Landroid/graphics/drawable/Icon;

.field private static mRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$UfMtn0ccqwuROdK5uku_91n4-b0()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable$lambda-3()V

    return-void
.end method

.method public static synthetic $r8$lambda$m2riFiPu5To0x763RsquIL-zh0k(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish$lambda-1$lambda-0(Lcom/miui/home/recents/views/FloatingIconView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    const-string v0, ""

    .line 17
    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    .line 22
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    .line 57
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final mFinishRunnable$lambda-3()V
    .locals 2

    .line 58
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_0

    const-string v0, "StatusBarIconTypeAnimHelper"

    const-string v1, "FocusNotifyAnimFinish timeout"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish()V

    :cond_0
    return-void
.end method

.method private static final onFocusNotifyAnimFinish$lambda-1$lambda-0(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finishImmediately()V

    const/4 p0, 0x0

    .line 30
    sput-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method


# virtual methods
.method public final getMIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 18
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public final getMRect()Landroid/graphics/Rect;
    .locals 0

    .line 19
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final isAnimFinished()Z
    .locals 1

    .line 103
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimStatusStarted()Z
    .locals 1

    .line 86
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimStatusStartedForStatusBar()Z
    .locals 1

    .line 90
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimating()Z
    .locals 1

    .line 99
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNeedShowStatusBarTypeAnim(Lcom/miui/home/launcher/util/ClosingAppInfo;)Z
    .locals 4

    const-string p0, "appInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 49
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 50
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 51
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 53
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedShowStatusBarTypeAnim:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " judgePackage="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconTypeAnimHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final notifyAnimEndForStatusBar()V
    .locals 2

    const-string v0, "StatusBarIconTypeAnimHelper"

    const-string v1, "notifyAnimEndForStatusBar"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onFocusNotifyAnimEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    :cond_0
    return-void
.end method

.method public final notifyAnimStartedForStatusBar()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimStatusStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onFocusNotifyAnimStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    :cond_0
    return-void
.end method

.method public final onFocusNotifyAnimFinish()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 27
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 33
    :cond_0
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V
    .locals 1

    .line 38
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    .line 39
    sput-object p2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p3, :cond_0

    .line 41
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFocusedNotifUpdate pachage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " icon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconTypeAnimHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V
    .locals 1

    const-string/jumbo p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAnimStatus ->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBarIconTypeAnimHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    return-void
.end method

.method public final waitFinishFloatingIconView(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 2

    const-string p0, "floatingIconView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "StatusBarIconTypeAnimHelper"

    const-string/jumbo v0, "waitFinishFloatingIconView"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 67
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
