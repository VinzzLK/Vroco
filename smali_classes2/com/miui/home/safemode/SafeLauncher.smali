.class public Lcom/miui/home/safemode/SafeLauncher;
.super Landroidx/fragment/app/FragmentActivity;
.source "SafeLauncher.java"


# instance fields
.field private mAdapter:Lcom/miui/home/safemode/SafeAppListAdapter;

.field private final mAppCallback:Landroid/content/pm/LauncherApps$Callback;

.field private mAppListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

.field private final mCheckVersionUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mHasRegistered:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mKillSettingsTask:Ljava/lang/Runnable;

.field private mLargeListViewLandMargin:I

.field private mLargeListViewPortraitMargin:I

.field private mLargeTopContainer:Landroid/widget/LinearLayout;

.field private mLargeTopContainerMargin:I

.field private mLargeTopContainerMarginBottom:I

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLineSpacing:I

.field private mListViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mResumed:Z

.field private final mShowOrHideDialogTask:Ljava/lang/Runnable;

.field private mSmallListViewMargin:I

.field private mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSmallTopContainerMargin:I

.field private mSmallTopContainerMarginBottom:I

.field private mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;


# direct methods
.method public static synthetic $r8$lambda$8GOzj9ZcEqI9YlrOUzlOtF93mXs(Lcom/miui/home/safemode/SafeLauncher;Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeLauncher;->lambda$bindViews$2(Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPzMdojEOYG7qyaLzBeZR3PyNPg(Lcom/miui/home/safemode/SafeLauncher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeLauncher;->lambda$bindViews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TT8TvGo4ZaRBg-8AdIdhYqc3OkQ(Lcom/miui/home/safemode/SafeLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$hpd3jLhIx3uMMtf_dbKRGoPUjMo(Lcom/miui/home/safemode/SafeLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rv4_co5ROTeZQwNT3O7AqMsy_5s(Lcom/miui/home/safemode/SafeLauncher;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tYY_MKGoi_BeO2UH1Ha93EthHbI(Lcom/miui/home/safemode/SafeLauncher;ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/safemode/SafeLauncher;->lambda$new$3(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHasRegistered:Z

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mResumed:Z

    .line 215
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mCheckVersionUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    .line 239
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$1;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$1;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$2;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$2;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppCallback:Landroid/content/pm/LauncherApps$Callback;

    .line 265
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$3;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$3;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mShowOrHideDialogTask:Ljava/lang/Runnable;

    .line 314
    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mKillSettingsTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/safemode/SafeLauncher;)Lcom/miui/home/safemode/SafeAppListAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAdapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    return-object p0
.end method

.method private bindViews()V
    .locals 3

    .line 105
    sget v0, Lcom/miui/home/safemode/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/safemode/SafeModeUtil;->getStatusBarHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    sget v0, Lcom/miui/home/safemode/R$id;->list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    sget v0, Lcom/miui/home/safemode/R$id;->top_container_small:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    sget v0, Lcom/miui/home/safemode/R$id;->top_container_large:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainer:Landroid/widget/LinearLayout;

    .line 109
    sget v0, Lcom/miui/home/safemode/R$id;->tv_commit_small:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    sget v1, Lcom/miui/home/safemode/R$id;->tv_commit_large:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Lcom/miui/home/safemode/SafeAppListAdapter;

    new-instance v1, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/safemode/SafeAppListAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAdapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    .line 122
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private dealWithPendingUpdate()V
    .locals 3

    .line 306
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->getPendingUpdateResult()Lcom/miui/home/safemode/UpdateResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mCheckVersionUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    .line 309
    invoke-virtual {v1}, Lcom/miui/home/safemode/UpdateResult;->getUpdateStatus()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/home/safemode/UpdateResult;->getUpdateInfo()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v1

    .line 308
    invoke-interface {p0, v2, v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    const/4 p0, 0x0

    .line 310
    invoke-virtual {v0, p0}, Lcom/miui/home/safemode/SafeModeManager;->setPendingUpdateResult(Lcom/miui/home/safemode/UpdateResult;)V

    :cond_0
    return-void
.end method

.method private initLayoutParameters()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mListViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_top_container_margin_start_end_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainerMargin:I

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_small_top_container_margin_start_end_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainerMargin:I

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_small_top_container_margin_bottom_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainerMarginBottom:I

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_large_top_container_margin_bottom_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainerMarginBottom:I

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_small_listview_margin_start_end_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallListViewMargin:I

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_large_listview_margin_start_end_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeListViewPortraitMargin:I

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_large_listview_margin_start_end_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeListViewLandMargin:I

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_launch_item_divider_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLineSpacing:I

    return-void
.end method

.method private isLandscapeOrientation()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$bindViews$1(Landroid/view/View;)V
    .locals 1

    .line 112
    sget-object p1, Lcom/miui/home/safemode/AppVersionUpdateListener;->INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/safemode/AppVersionUpdateListener;->setTriggerByUser(Z)V

    .line 113
    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeUtil;->tryCheckUpdate(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$bindViews$2(Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;)V
    .locals 1

    .line 119
    iget-object v0, p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mPkgName:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, v0, p1}, Lcom/miui/home/safemode/SafeModeUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$new$3(ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateListener: updateStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SafeLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mResumed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    sget-object p2, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/home/safemode/SafeModeManager;->setPendingUpdateResult(Lcom/miui/home/safemode/UpdateResult;)V

    if-nez p1, :cond_2

    .line 226
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-nez p1, :cond_1

    .line 227
    new-instance p1, Lcom/miui/home/safemode/SafeLauncherDialog;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/miui/home/safemode/SafeLauncherDialog;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    const/4 p2, 0x0

    .line 228
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 234
    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "not resumed or showing BugReportDialog, pending..."

    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    new-instance v0, Lcom/miui/home/safemode/UpdateResult;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/safemode/UpdateResult;-><init>(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/safemode/SafeModeManager;->setPendingUpdateResult(Lcom/miui/home/safemode/UpdateResult;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->showOrHideBugReportDialogIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->dealWithPendingUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeLauncher"

    const-string v1, "showOrHideBugReportDialogIfNeeded: "

    .line 278
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 2

    .line 316
    :try_start_0
    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeUtil;->clearSettingsTask(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeLauncher"

    const-string v1, "clearSettingsTask failed: "

    .line 320
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 3

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v2, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 76
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.miui.home.safemode.exit_safeMode"

    invoke-static {v0, v2, v1}, Lcom/miui/home/safemode/SafeModeUtil;->registerFinishBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/home/safemode/SafeModeUtil;->registerPackageChange(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHasRegistered:Z

    const/4 p0, 0x0

    return p0
.end method

.method private onScreenSizeChange()V
    .locals 6

    .line 147
    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->isLargeScreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 148
    :goto_0
    invoke-static {p0, v0}, Lcom/miui/home/safemode/DeviceInfo;->updateScreenSize(Landroid/content/Context;Z)V

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainerMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 155
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainerMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 156
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainerMarginBottom:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 157
    iget-object v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->isLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeListViewLandMargin:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeListViewPortraitMargin:I

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainerMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainerMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mTopContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainerMarginBottom:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 166
    iget-object v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallTopContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mLargeTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mSmallListViewMargin:I

    .line 171
    :goto_1
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 172
    invoke-static {}, Lcom/miui/home/safemode/DeviceInfo;->getColumnCount()I

    move-result v4

    invoke-direct {v3, p0, v4, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 173
    invoke-static {v0}, Lcom/miui/home/safemode/DeviceInfo;->getColumnDividerWidth(I)I

    move-result v1

    .line 174
    new-instance v2, Lcom/miui/home/safemode/SafeItemDecoration;

    invoke-static {}, Lcom/miui/home/safemode/DeviceInfo;->getColumnCount()I

    move-result v4

    iget v5, p0, Lcom/miui/home/safemode/SafeLauncher;->mLineSpacing:I

    invoke-direct {v2, v4, v1, v5}, Lcom/miui/home/safemode/SafeItemDecoration;-><init>(III)V

    .line 175
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v1, :cond_3

    .line 176
    iget-object v4, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 179
    iput-object v2, p0, Lcom/miui/home/safemode/SafeLauncher;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 180
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mListViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 182
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mListViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mListViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mAdapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeLauncherDialog;->updateSize()V

    .line 188
    :cond_4
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mUpdateDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-eqz p0, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeLauncherDialog;->updateSize()V

    :cond_5
    return-void
.end method

.method private showOrHideBugReportDialogIfNeeded()Z
    .locals 3

    .line 283
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    const-string v1, "has_safe_mode_dialog_dismissed"

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBugReportDialogIfNeeded: hasShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SafeLauncher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    :cond_1
    return v2

    .line 287
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 288
    new-instance v0, Lcom/miui/home/safemode/SafeLauncherDialog;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/safemode/SafeLauncherDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    .line 289
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 291
    :cond_3
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mBugReportDialog:Lcom/miui/home/safemode/SafeLauncherDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->onScreenSizeChange()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->modifySafeLauncherAttribute(Landroid/view/Window;)V

    const-string p1, "launcherapps"

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 67
    sget p1, Lcom/miui/home/safemode/R$layout;->activity_safe_launcher:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->bindViews()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->initLayoutParameters()V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeLauncher;->onScreenSizeChange()V

    .line 71
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher;->mAdapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/home/safemode/SafeModeUtil;->loadAllAppsByProvider(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter;Z)V

    .line 72
    sget-object p1, Lcom/miui/home/safemode/AppVersionUpdateListener;->INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mCheckVersionUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/safemode/AppVersionUpdateListener;->setCallbackRef(Ljava/lang/ref/WeakReference;)V

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    new-instance v0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/safemode/SafeLauncher;)V

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 201
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 202
    sget-object v0, Lcom/miui/home/safemode/AppVersionUpdateListener;->INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/safemode/AppVersionUpdateListener;->setCallbackRef(Ljava/lang/ref/WeakReference;)V

    .line 203
    iget-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHasRegistered:Z

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v2, p0, Lcom/miui/home/safemode/SafeLauncher;->mAppCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 207
    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeLauncher"

    const-string v1, "onDestroy: "

    .line 210
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mResumed:Z

    .line 101
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mResumed:Z

    .line 93
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/safemode/SafeLauncher;->mShowOrHideDialogTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    iget-object v0, p0, Lcom/miui/home/safemode/SafeLauncher;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher;->mKillSettingsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
