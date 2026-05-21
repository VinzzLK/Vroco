.class Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsActivityCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/home/launcher/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/AppToOverviewAnimationProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCreateTime:J

.field protected final mHelper:Lcom/miui/home/recents/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

.field final synthetic this$0:Lcom/miui/home/recents/OverviewCommandHelper;


# direct methods
.method public static synthetic $r8$lambda$02EmU_qhV-7RywNQdy9pFhpK6Tg(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BRpSIUcTkikNSUyqFvrzJv13JmM(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fiui2HMOt4RxTR3Yqstai0wual8(Lcom/miui/home/recents/views/RecentsView;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->lambda$handleCommand$0(Lcom/miui/home/recents/views/RecentsView;J)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper;)V
    .locals 3

    .line 115
    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->access$100(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getActivityControlHelper()Lcom/miui/home/recents/ActivityControlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    .line 118
    new-instance v1, Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    .line 119
    invoke-static {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskId()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;-><init>(Lcom/miui/home/recents/ActivityControlHelper;I)V

    iput-object v1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    return-void
.end method

.method private createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;->unregister()V

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private static synthetic lambda$handleCommand$0(Lcom/miui/home/recents/views/RecentsView;J)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(J)V

    return-void
.end method

.method private onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    const-string v0, "OverviewCommandHelper"

    const-string v1, "onActivityReady"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 5

    .line 186
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 187
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsViewIgnoringWinFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->isTaskLaunchAnimRunning()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0xc8

    cmp-long v4, p1, v2

    if-gez v4, :cond_3

    .line 196
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {p0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$500(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v4, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/views/RecentsView;J)V

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 198
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(J)V

    :goto_2
    return v1

    .line 201
    :cond_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-gez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected onTransitionComplete()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 9

    .line 124
    iget-wide v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    iget-object v2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v2}, Lcom/miui/home/recents/OverviewCommandHelper;->access$300(Lcom/miui/home/recents/OverviewCommandHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 125
    iget-object v2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    iget-wide v3, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    invoke-static {v2, v3, v4}, Lcom/miui/home/recents/OverviewCommandHelper;->access$302(Lcom/miui/home/recents/OverviewCommandHelper;J)J

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->handleCommand(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->saveForegroundSmallWinowsAndFullScreen()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "navigation_bar"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$400(Lcom/miui/home/recents/OverviewCommandHelper;)V

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {v0}, Lcom/miui/home/recents/ActivityControlHelper;->switchToRecentsIfVisible()Z

    move-result v0

    const-string v1, "Menu key"

    if-eqz v0, :cond_2

    const-string p0, "OverviewCommandHelper"

    const-string v0, "switchToRecentsIfVisible return"

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    .line 146
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;)V

    .line 149
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onEnterRecentsFromApp()V

    .line 150
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 151
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    new-instance v1, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    invoke-interface {v0, v1}, Lcom/miui/home/recents/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$100(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 157
    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->access$500(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->mAnimationProvider:Lcom/miui/home/recents/AppToOverviewAnimationProvider;

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v7

    .line 156
    invoke-interface/range {v2 .. v8}, Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V

    return-void
.end method
