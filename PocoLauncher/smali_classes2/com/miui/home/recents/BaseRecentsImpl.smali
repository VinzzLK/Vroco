.class public Lcom/miui/home/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;
.implements Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$H;,
        Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;
    }
.end annotation


# instance fields
.field private final mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

.field private final mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

.field mBackStubCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

.field private mCastModeObserver:Landroid/database/ContentObserver;

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDisplayCount:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mElderlyModeObserver:Landroid/database/ContentObserver;

.field private final mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mForegroundPackageName:Ljava/lang/String;

.field private final mFsgReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

.field private mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

.field protected mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field public mHideGestureLine:Z

.field private final mHideGestureLineListener:Landroid/database/ContentObserver;

.field private mIsChangedScreeningPkgLockState:Z

.field private mIsFsgNavBar:Z

.field private mIsInAnotherPro:Z

.field private mIsShouldShowGestureInKeyguard:Z

.field private volatile mIsStatusBarExpansion:Z

.field private mIsUseMiuiHomeAsDefaultHome:Z

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastResumedClassName:Ljava/lang/String;

.field private mLayoutStyleObserver:Landroid/database/ContentObserver;

.field private final mLocalCtrlActs:[Ljava/lang/String;

.field private volatile mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private mNavigationModeObserver:Landroid/database/ContentObserver;

.field private mNoBackActListStr:Ljava/lang/String;

.field private mNoBackAndHomeActListStr:Ljava/lang/String;

.field private mNoHomeActListStr:Ljava/lang/String;

.field private final mReadCloudRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

.field mShowStubFrom:I

.field private mStubViewHidePkg:Ljava/lang/String;

.field private mSuperSavePowerObserver:Landroid/database/ContentObserver;

.field private mSystemUiFlags:I

.field private mTalkBackEnable:Z

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

.field private final mThreeGestureDockTaskObserver:Landroid/database/ContentObserver;

.field private mThreeGestureSplitController:Lcom/miui/home/recents/ThreeGestureSplitController;

.field private mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

.field mVTCameraReceiver:Landroid/content/BroadcastReceiver;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$3p6fOvMl1YfzjB5m1xw9y2GndSc(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$hideNavStubView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$6RXRqYauc0InHw-WtFhcvtbiML4(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$onResumed$16(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$89FKBQFXsza5UKLiynPUUebF63Y(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$showBackStubWindow$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$C8I7hGNAcg-oMifJoqm0pRDUkW8(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$showNavStubView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$CSE8yRVfGy5TPS2ZoBz0OBdEuC4(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$updateDisplayCount$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CtlBEz6IUgsicIMpsk_ecN0_Xok(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$clearBackStubWindow$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$EQuyMMod3I03V78O80vKv5q1IAg(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$onSystemUiFlagsChanged$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gbrb68ObO6pKRVGHGqfEB_o-UlU(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$createAndAddNavStubView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$KrZN98TgB0K49OWAKanYbgrbv2o(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$requestApplyInsetsOfNavStubView$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mer4HQ9oZ4FEPMxDapwOOcqRxIY(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$onResumed$15(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pf8b0bYJJqt8JnJ6UQmYdhGzw9g(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$hideBackStubWindow$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$V9tPh-7dGAmXEHmXGNn-5pn5WW0(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$addBackStubWindow$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$VQHyZx4rCZVgDEv-YA15p1B3qmU(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$disableTouchBySwipeStatusBar$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnZHubqPOOMkCJp4w8364czfwLg(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$updateFsgWindowVisibilityState$10(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqQn9wYAgpcpTNjp2ylOQn4YBP8(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$removeNavStubView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIF88B0qoptT9dJ3YYMQozi0jLw(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$registerCloudDataObserver$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfjZnYW-d1njiuwBvt3DLq78xjc(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$disableBackStubWindow$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vBPlaX3bSpLw5AJaT6lzwuwm6S4(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$registerCloudDataObserver$1(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xpqoyZ1OkkDHJeEhSIxwtMf4UWI()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$goToNormalIfOverview$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.android.systemui.fsgesture.HomeDemoAct"

    const-string v3, "com.android.systemui.fsgesture.DemoFinishAct"

    const-string v4, "com.android.systemui.fsgesture.DrawerDemoAct"

    const-string v5, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const-string v6, "com.android.systemui.fsgesture.AppQuickSwitchActivity"

    const-string v7, "com.android.provision.activities.CongratulationActivity"

    const-string v8, "com.xiaomi.misubscreenui.SubScreenMainActivity"

    .line 121
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const-string v2, "android.autofillservice.cts.LoginActivity:"

    .line 130
    iput-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    .line 157
    new-instance v2, Lcom/miui/home/recents/RecentsReceiver;

    invoke-direct {v2}, Lcom/miui/home/recents/RecentsReceiver;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    .line 164
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsShouldShowGestureInKeyguard:Z

    .line 165
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTalkBackEnable:Z

    .line 174
    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mShowStubFrom:I

    .line 177
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mStubViewHidePkg:Ljava/lang/String;

    .line 196
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mBackStubCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    .line 321
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$3;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThreeGestureDockTaskObserver:Landroid/database/ContentObserver;

    .line 336
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$4;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 406
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$6;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mVTCameraReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$10;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$10;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 724
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$11;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$11;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    .line 742
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$12;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$12;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 752
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$13;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$13;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavigationModeObserver:Landroid/database/ContentObserver;

    .line 763
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$14;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$14;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 909
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$15;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$15;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 927
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$16;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$16;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 972
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$17;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$17;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    .line 990
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    .line 1195
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$18;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$18;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    .line 1209
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$19;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$19;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    .line 1381
    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 1411
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 248
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 249
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 250
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 252
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->initSFDeviceGestureHelper()V

    .line 253
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    .line 254
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.systemui.taskmanager.Clear"

    .line 255
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 257
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Lcom/miui/home/recents/ThumbnailBlurManager;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v3}, Lcom/miui/home/recents/ThumbnailBlurManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

    .line 261
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    .line 263
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerCloudDataObserver()V

    .line 264
    sget-object v1, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/ScreenPinnedHelper;->registerPinContentObserver(Landroid/content/Context;)V

    .line 265
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerScreeningModeObserver()V

    .line 266
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initHideGestureLine(Landroid/content/Context;)V

    .line 267
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerSuperSavePowerObserver()V

    .line 268
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerRecentsLayoutStyleObserver()V

    .line 269
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerThreeGestureObserver()V

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerVTCameraReceiver()V

    .line 271
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->registerTouchExplorationStateChangeListener(Landroid/content/Context;)V

    .line 272
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->registerAnimatorDurationScaleObserver()V

    .line 273
    new-instance v1, Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/ThreeGestureSplitController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThreeGestureSplitController:Lcom/miui/home/recents/ThreeGestureSplitController;

    .line 274
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindowFeature()Z

    move-result v5

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindows()Z

    move-result v6

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportPin()Z

    move-result v7

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v8

    .line 274
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;ZZZZ)V

    .line 279
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    .line 280
    invoke-static {}, Lcom/android/systemui/shared/recents/AppObserver;->getInstance()Lcom/android/systemui/shared/recents/AppObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/recents/AppObserver;->addForegroundInfoListener(Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;)V

    .line 281
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateDisplayCount(Z)V

    .line 284
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/miui/home/recents/UserSetupCompleteHelper;->regisUserSetupComplete(Landroid/os/Handler;)V

    .line 285
    invoke-static {}, Lcom/miui/home/recents/UserSetupCompleteHelper;->updateUserSetupComplete()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->notifyOnFold()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/content/Intent;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->isAnotherDisplay(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTalkBackEnable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2484(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2684(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/ThreeGestureSplitController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThreeGestureSplitController:Lcom/miui/home/recents/ThreeGestureSplitController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateDisplayCount(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/BaseRecentsImpl;ILandroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->goToNormalIfOverview()V

    return-void
.end method

.method private addBackStubWindow()V
    .locals 2

    .line 862
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 865
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 20

    move-object/from16 v0, p0

    .line 598
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v1, :cond_3

    .line 601
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "systemui_fsg_version"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_fsg_nav_bar"

    .line 604
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    .line 603
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 605
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigation_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavigationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 608
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hide_gesture_line"

    .line 609
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 608
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "show_gesture_appswitch_feature"

    .line 611
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 610
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 612
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "elderly_mode"

    .line 613
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 612
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 615
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 616
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 617
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    iget-object v7, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 621
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.android.systemui.fsgesture"

    .line 622
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    iget-object v13, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x2

    const-string v17, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v19}, Lcom/miui/launcher/utils/LauncherUtils;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 625
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v1

    iget-object v4, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    .line 629
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    .line 630
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    .line 632
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    iput-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    .line 633
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentDefaultHomePackageName()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v3

    :cond_2
    iput-boolean v5, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    .line 635
    iget-object v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    .line 638
    iget-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v1, :cond_3

    const-string v1, "RecentsImpl"

    const-string v2, "navstubview will be added: addFsgGestureWindow"

    .line 639
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V

    :cond_3
    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    .line 893
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createAndAddNavStubView()V
    .locals 2

    .line 656
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 659
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    .line 1263
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getTopActivity(Z)Landroid/content/ComponentName;
    .locals 5

    .line 1268
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr p1, v2

    .line 1271
    iget v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    const-string v3, "RecentsImpl"

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    .line 1272
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 1274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTopActivity from observer.   cn="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_3

    .line 1277
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v4

    .line 1281
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTopActivity from AMS.   cn="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private goToNormalIfOverview()V
    .locals 1

    .line 473
    sget-object p0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    sget-object v0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda16;->INSTANCE:Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda16;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideNavStubView()V
    .locals 2

    .line 704
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initGestureStub()V
    .locals 4

    const-string v0, "RecentsImpl"

    const-string v1, "initGestureStub"

    .line 875
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Lcom/miui/home/recents/GestureStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mBackStubCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;I)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 877
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;)V

    .line 879
    new-instance v0, Lcom/miui/home/recents/GestureStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mBackStubCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;I)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    .line 880
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;)V

    .line 881
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method private initHideGestureLine(Landroid/content/Context;)V
    .locals 2

    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private initSFDeviceGestureHelper()V
    .locals 3

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/recents/BaseRecentsImpl$7;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/BaseRecentsImpl$7;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->init(Landroid/content/Context;Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;)V

    return-void
.end method

.method private isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z
    .locals 1

    .line 1109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.mfashiongallery.emag.morning.MorningGreetActivity:com.android.updater.DemoRebootActivity:miui.systemui.flashlight.MiFlashlightActivity:com.android.deskclock.activity.AlarmAlertFullScreenActivity"

    .line 1112
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private isAnotherDisplay(Landroid/content/Intent;)Z
    .locals 4

    .line 810
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "RecentsImpl"

    if-nez p0, :cond_0

    const-string p0, "isAnotherDisplay: display is null"

    .line 812
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 815
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    const-string v2, "app_dc_displayid"

    .line 816
    invoke-virtual {p1, v2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityResumed in another display, appDisplayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", homeDisplayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isCloudProviderExist()Z
    .locals 1

    .line 535
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return v0
.end method

.method private isForeLauncherWithMultiWindowMode()Z
    .locals 1

    .line 1357
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1358
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUseLauncherRecentsAndFsGesture()Z
    .locals 0

    .line 647
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return p0
.end method

.method private synthetic lambda$addBackStubWindow$8()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub()V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 870
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    return-void
.end method

.method private synthetic lambda$clearBackStubWindow$9()V
    .locals 2

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 897
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 901
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 904
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createAndAddNavStubView$4()V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_1

    const-string v0, "RecentsImpl"

    const-string v1, "createAndAddNavStubView"

    .line 661
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v0, Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 663
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    .line 664
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setHideGestureLine(Z)V

    .line 668
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 669
    invoke-virtual {v3}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 668
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setUseGesture(Z)V

    .line 671
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$disableBackStubWindow$14(Z)V
    .locals 2

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableBackStubWindow    disableTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 1183
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz p0, :cond_1

    .line 1184
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$disableTouchBySwipeStatusBar$13(Z)V
    .locals 2

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTouchBySwipeStatusBar    disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    .line 1171
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz p0, :cond_1

    .line 1172
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$goToNormalIfOverview$3()V
    .locals 1

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->resetToNormalIfInOverview()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideBackStubWindow$12()V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "hideBackStubWindow exceute"

    .line 1154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    .line 1159
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz p0, :cond_1

    .line 1160
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hideNavStubView$7()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "hideNavStubView"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setKeepHidden(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResumed$15(Ljava/lang/String;Z)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->updateStubViewVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onResumed$16(ZLjava/lang/String;)V
    .locals 2

    .line 1294
    sget-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-virtual {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1295
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onSystemUiFlagsChanged$17(I)V
    .locals 1

    .line 1384
    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 1385
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 1386
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCloudDataObserver$1(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 374
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isCloudProviderExist()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "RecentsImpl"

    const-string p1, "isCloudProviderExist error"

    .line 376
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$registerCloudDataObserver$2(Ljava/lang/Boolean;)V
    .locals 2

    .line 382
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RecentsImpl"

    const-string p1, "registerContentObserver error"

    .line 387
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$removeNavStubView$5()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "removeNavStubView"

    .line 679
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->onNavStubViewWindowRemoved()V

    .line 681
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->unregisterInputConsumer()V

    .line 682
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 684
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setUseGesture(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestApplyInsetsOfNavStubView$18()V
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 1406
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showBackStubWindow$11()V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "showBackStubWindow, show gesture stub view"

    .line 1140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 1144
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz p0, :cond_1

    .line 1145
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showNavStubView$6()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "showNavStubView"

    .line 697
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setKeepHidden(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDisplayCount$0()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    return-void
.end method

.method private synthetic lambda$updateFsgWindowVisibilityState$10(Ljava/lang/String;Z)V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "typefrom_status_bar_expansion"

    .line 1000
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    iput-boolean p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    .line 1002
    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->setControlPanelExpanded(Z)V

    .line 1004
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityStateInBgThread(ZLjava/lang/String;ZZ)V

    return-void
.end method

.method private notifyOnFold()V
    .locals 1

    .line 483
    invoke-static {}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getInstance()Lcom/miui/home/recents/SpecialDeviceFoldManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getFoldedListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;->onFold()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readCloudDataForFsg()V
    .locals 2

    .line 1205
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerCloudDataObserver()V
    .locals 2

    .line 371
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda18;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda17;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private registerRecentsLayoutStyleObserver()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$5;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$5;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "task_stack_view_layout_style"

    .line 401
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    .line 400
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerScreeningModeObserver()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$9;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$9;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cast_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 584
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSuperSavePowerObserver()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$8;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$8;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    .line 529
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 528
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerThreeGestureObserver()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_horizontal_ltr"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "split_ltr"

    .line 307
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_horizontal_rtl"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "split_rtl"

    .line 312
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_dock_task"

    .line 317
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThreeGestureDockTaskObserver:Landroid/database/ContentObserver;

    .line 316
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerTouchExplorationStateChangeListener(Landroid/content/Context;)V
    .locals 1

    const-string v0, "accessibility"

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 291
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTalkBackEnable:Z

    .line 292
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$2;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method private removeNavStubView()V
    .locals 2

    .line 677
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultProperty(Lcom/miui/home/recents/GestureStubView;)V
    .locals 2

    .line 885
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_gesture_appswitch_feature"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p0, v1, 0x1

    .line 887
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 888
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView;->enableGestureBackAnimation(Z)V

    .line 889
    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->adaptAndRender()V

    return-void
.end method

.method private setFSGNavBar(Z)V
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFSGNavBar, force_fsg_nav_bar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setTaskStackViewLayoutStyle(ILandroid/content/Context;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 503
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->create(ILandroid/content/Context;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskStackViewLayoutStyle change to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private showBackStubWindow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1116
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow(ZZ)V

    return-void
.end method

.method private showBackStubWindow(ZZ)V
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBackStubWindow, fromLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeAppResume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "showBackStubWindow, screen in fold, return"

    .line 1123
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 1127
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz p2, :cond_1

    xor-int/lit8 v0, p1, 0x1

    .line 1128
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/GestureStubView;->setAppResume(Z)V

    .line 1130
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz p2, :cond_2

    xor-int/lit8 v0, p1, 0x1

    .line 1131
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/GestureStubView;->setAppResume(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 1135
    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mShowStubFrom:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1137
    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mShowStubFrom:I

    .line 1139
    :goto_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance p2, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showNavStubView()V
    .locals 2

    .line 691
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RecentsImpl"

    const-string v0, "showNavStubView, screen is fold,return"

    .line 692
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 695
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDisplayCount(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 356
    new-instance p1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayCount(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    :goto_0
    return-void
.end method

.method private updateFsgInKeyguardLocked()V
    .locals 4

    const/4 v0, 0x1

    .line 1092
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFsgInKeyguardLocked: topActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecentsImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1097
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsShouldShowGestureInKeyguard:Z

    .line 1098
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 1099
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :goto_0
    return-void
.end method

.method private updateFsgWindowState()V
    .locals 3

    .line 826
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 830
    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    if-eq v0, v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->sendBroadcastForUpdateSearchResult(Landroid/content/Context;)V

    .line 832
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    .line 834
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFsgWindowState  isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 839
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_4

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_3

    const-string v0, "navstubview will be added: updateFsgWindowState"

    .line 842
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 845
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 847
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, "navstubview will be removed: updateFsgWindowState"

    .line 851
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    .line 853
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 855
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateFsgWindowVisibilityStateInBgThread(ZLjava/lang/String;ZZ)V
    .locals 5

    .line 1010
    sget-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-virtual {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->isKeyguardLocked()Z

    move-result v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFsgWindowVisibilityStateInBgThread, isEnter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", typeFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsInAnotherPro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isStatusBarExpansion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "updateFsgWindowVisibilityStateInBgThread, folded state, return"

    .line 1021
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v1, :cond_8

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p3, "typefrom_home"

    .line 1029
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    return-void

    :cond_2
    const-string p4, "typefrom_ai_voice_assist"

    const-string v1, "typefrom_keyguard"

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    .line 1035
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x7

    goto :goto_0

    :sswitch_2
    const-string p3, "typefrom_demo"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :sswitch_3
    const-string p3, "typefrom_partial_screenshot"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x6

    goto :goto_0

    :sswitch_4
    const-string p3, "typefrom_status_bar_expansion"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_5
    const-string p3, "typefrom_provision"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_6
    const-string p3, "typefrom_landscape_overview"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, v4

    goto :goto_0

    :sswitch_8
    const-string p3, "typefrom_half_split"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x8

    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1068
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 1069
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto/16 :goto_1

    .line 1063
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto/16 :goto_1

    .line 1059
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    .line 1060
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    goto/16 :goto_1

    :pswitch_2
    if-nez v0, :cond_8

    .line 1054
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 1055
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto/16 :goto_1

    .line 1046
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateFsgWindowVisibilityStateInBgThread, mLastResumedClassName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    const-string p2, "com.miui.home.launcher.Launcher"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1048
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 1042
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 1037
    :pswitch_5
    iput-boolean v4, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsShouldShowGestureInKeyguard:Z

    .line 1038
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 1039
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 1073
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 1074
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgInKeyguardLocked()V

    goto :goto_1

    .line 1075
    :cond_5
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsShouldShowGestureInKeyguard:Z

    if-eqz p1, :cond_6

    .line 1077
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 1078
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 1079
    :cond_6
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1080
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1081
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1082
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 1083
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 1086
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d546eb7 -> :sswitch_8
        -0x3d22c45f -> :sswitch_7
        -0x3a19d748 -> :sswitch_6
        -0x3376ffc6 -> :sswitch_5
        0x18abd181 -> :sswitch_4
        0x1f23e11f -> :sswitch_3
        0x4025cb5e -> :sswitch_2
        0x4027c25a -> :sswitch_1
        0x5dc52872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStubViewVisibility(Ljava/lang/String;Z)V
    .locals 5

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStubViewVisibility, className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    .line 1303
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1319
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 1320
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "updateStubViewVisibility, local control, return"

    .line 1321
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isForeLauncherWithMultiWindowMode()Z

    move-result p2

    const-string v0, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    .line 1327
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_3

    goto :goto_2

    .line 1338
    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableTouchBySwipeStatusBar(Z)V

    .line 1339
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1340
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    .line 1341
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    goto :goto_1

    .line 1342
    :cond_4
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1343
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 1344
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    .line 1345
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 1346
    :cond_5
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1347
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 1348
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 1350
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 1351
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    .line 1352
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :goto_1
    return-void

    .line 1328
    :cond_7
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 1330
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto :goto_3

    :cond_8
    const-string p0, "get Launcher is null"

    .line 1332
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p0, "updateStubViewVisibility, notifyBackGestureStatus, return"

    .line 1334
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1308
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStubViewVisibility, return. mNavStubView="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mGestureStubLeft="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mGestureStubRight="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isNotUpdateByKeyguard="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsStatusBarExpansion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsInAnotherPro="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUseLauncherRecentsAndFsGesture()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isUseLauncherRecentsAndFsGesture()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public adaptToTopActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1243
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    return-void
.end method

.method public adaptToTopActivity(Z)V
    .locals 2

    .line 1247
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p1

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptToTopActivity   cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1250
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public changeBackVisible(ZZ)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeBackVisible, open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeAppResume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 238
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLastBackCloseApp(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow(ZZ)V

    goto :goto_0

    .line 241
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mShowStubFrom:I

    if-ne p1, v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableBackStubWindow(Z)V
    .locals 2

    .line 1178
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda14;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableTouchBySwipeStatusBar(Z)V
    .locals 2

    .line 1166
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda13;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIsUseMiuiHomeAsDefaultHome()Z
    .locals 0

    .line 1396
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return p0
.end method

.method public getLastBackCloseApp()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastBackCloseApp stubViewHidePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mStubViewHidePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RecentsImpl"

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mStubViewHidePkg:Ljava/lang/String;

    return-object p0
.end method

.method public getNavStubView()Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p0
.end method

.method public getSystemUiStateFlags()I
    .locals 0

    .line 1392
    iget p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    return p0
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object p0
.end method

.method public hideBackStubWindow()V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "hideBackStubWindow"

    .line 1151
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1152
    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mShowStubFrom:I

    .line 1153
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLauncherOnTop()Z
    .locals 1

    const/4 v0, 0x1

    .line 1255
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1257
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.miui.home.launcher.Launcher"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStatusBarExpansion()Z
    .locals 0

    .line 993
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    return p0
.end method

.method public isTalkBackEnable()Z
    .locals 0

    .line 301
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTalkBackEnable:Z

    return p0
.end method

.method public isTaskStackViewLayoutStyleVertical()Z
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 1191
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public notifyOnExpand()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getInstance()Lcom/miui/home/recents/SpecialDeviceFoldManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getFoldedListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;->onExpand()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 1414
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->hasThemeChanged(I)Z

    move-result v0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 1418
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    .line 1421
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onThemeChanged()V

    :cond_2
    if-eqz p1, :cond_3

    .line 1424
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onLanguageChange()V

    :cond_3
    return-void
.end method

.method public onEnterOrExitSmallWindow(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 366
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    .line 367
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->onTaskStackChangedBackground()V

    return-void
.end method

.method public onForegroundChanged(Ljava/lang/String;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1235
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    .line 1236
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz p1, :cond_0

    .line 1237
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->resetHomeStackBound()V

    :cond_0
    return-void
.end method

.method public onResumed(Ljava/lang/String;Z)V
    .locals 2

    .line 1289
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RecentsImpl"

    const-string p1, "onResumed, screen fold state, return"

    .line 1290
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1293
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 2

    .line 1383
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method registerVTCameraReceiver()V
    .locals 3

    .line 428
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "key_vt_camera_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "key_vt_camera_device_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "key_vt_camera_text"

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    .line 431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.vtcamera"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mVTCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public requestApplyInsetsOfNavStubView()V
    .locals 2

    .line 1404
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsUseMiuiHomeAsDefaultHome(Z)V
    .locals 2

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsUseMiuiHomeAsDefaultHome    isUseMiuiHomeAsDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eq v0, p1, :cond_0

    .line 803
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    .line 804
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    .line 805
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    :cond_0
    return-void
.end method

.method public setLastBackCloseApp(Ljava/lang/String;)V
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastBackCloseApp appPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RecentsImpl"

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mStubViewHidePkg:Ljava/lang/String;

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 589
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 2

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFsgWindowVisibilityState origin isEnter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", typeFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
