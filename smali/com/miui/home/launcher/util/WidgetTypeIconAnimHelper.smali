.class public Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;
.super Ljava/lang/Object;
.source "WidgetTypeIconAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    }
.end annotation


# static fields
.field public static final FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;


# instance fields
.field private mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.miui.player"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    iget-object v2, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 191
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    aget v2, v2, v3

    .line 193
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 194
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v3, v2, :cond_0

    return-object v1

    .line 200
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method private static getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 207
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 208
    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 209
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public clearWidgetTypeIconCache(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    :cond_0
    return-void
.end method

.method public defaultStartActivityAction(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "maml_view_location_on_screen"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 151
    check-cast v0, Landroid/graphics/Rect;

    new-instance v1, Lcom/miui/home/recents/event/WidgetClickEventInfo;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/recents/event/WidgetClickEventInfo;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/miui/home/recents/event/WidgetClickEventInfo;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_3

    const-string v0, "extra_is_clear_cache_agent"

    .line 155
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 154
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    .line 163
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-object p0
.end method

.method public isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 177
    array-length p1, p1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/miui/home/recents/event/WidgetClickEventInfo;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 44
    iget-object v3, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v3, :cond_c

    if-eqz p1, :cond_c

    .line 45
    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_8

    move v8, v6

    .line 51
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 52
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 56
    instance-of v10, v9, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v10, :cond_7

    .line 57
    move-object v10, v9

    check-cast v10, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 58
    invoke-virtual {v9, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v11, v4, v6

    .line 60
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v11

    aget v13, v4, v7

    .line 62
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v13

    .line 66
    iget v15, v1, Landroid/graphics/Rect;->left:I

    if-lt v15, v11, :cond_7

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-gt v11, v12, :cond_7

    iget v11, v1, Landroid/graphics/Rect;->top:I

    if-lt v11, v13, :cond_7

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v14, :cond_7

    .line 68
    new-instance v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-direct {v11}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;-><init>()V

    .line 69
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 71
    iget-object v12, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppClass:Ljava/lang/String;

    .line 76
    :cond_1
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 77
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v12

    .line 78
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v14

    .line 77
    invoke-virtual {v12, v13, v14}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v7

    goto :goto_1

    :cond_2
    move v12, v6

    .line 81
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v12, :cond_3

    .line 82
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v13

    iget-object v14, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v15, -0x1

    .line 83
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v6

    .line 82
    invoke-virtual {v13, v14, v15, v5, v6}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;ILjava/lang/String;I)V

    .line 86
    :cond_3
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->isUseTransitionAnimation()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 90
    :cond_4
    invoke-interface {v10}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 91
    iput-object v10, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetView:Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 92
    iget-object v3, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mScreenId:J

    .line 93
    iput-object v1, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetRect:Landroid/graphics/Rect;

    if-eqz v12, :cond_5

    goto :goto_3

    .line 97
    :cond_5
    iget-object v3, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 98
    invoke-virtual {v2, v1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->setRect(Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {v2, v9}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->setView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v2, v11}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->setLaunchAppWidgetViewInfo(Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;)V

    .line 101
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/event/WidgetClickEvent;

    invoke-direct {v3, v2}, Lcom/miui/home/recents/event/WidgetClickEvent;-><init>(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    move v6, v7

    move-object v5, v11

    goto :goto_5

    .line 104
    :cond_6
    invoke-static {v9}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    move-object v5, v11

    goto :goto_4

    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-nez p3, :cond_9

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_6

    :cond_9
    move-object/from16 v1, p3

    :goto_6
    if-eqz v5, :cond_a

    .line 115
    iget-object v2, v5, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_a
    if-eqz v6, :cond_b

    const-string/jumbo v0, "skip_start"

    .line 119
    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 121
    :cond_b
    iput-object v5, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    goto :goto_7

    :cond_c
    move-object/from16 v1, p3

    :goto_7
    return-object v1
.end method

.method public setLaunchAppWidgetViewInfo(Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-void
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    :cond_0
    return-void
.end method
