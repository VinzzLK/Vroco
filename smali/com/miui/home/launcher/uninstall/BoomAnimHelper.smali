.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.super Ljava/lang/Object;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;
    }
.end annotation


# static fields
.field private static isBoomAnimating:Z


# direct methods
.method static synthetic access$000(Lcom/miui/home/launcher/Launcher;F)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->playDeleteSound(Lcom/miui/home/launcher/Launcher;F)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->isBoomAnimating:Z

    return p0
.end method

.method public static doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v7

    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v0, v9

    .line 114
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v0, v1, :cond_4

    move-object/from16 v1, p1

    .line 115
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->canShowBoomAnim(Lcom/miui/home/launcher/Launcher;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-static {v6, v2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 122
    invoke-interface {v2}, Lcom/miui/home/launcher/DesktopIcon;->getBoomAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-array v4, v10, [I

    .line 126
    invoke-interface {v2, v4}, Lcom/miui/home/launcher/DesktopIcon;->getIconImageViewCenterPoint([I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v11

    aput-object v4, v5, v10

    .line 131
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 133
    invoke-interface {v2, v3}, Lcom/miui/home/launcher/DesktopIcon;->setAlpha(F)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 137
    invoke-static {v6, v12}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->playDeleteSound(Lcom/miui/home/launcher/Launcher;F)V

    .line 138
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    move-wide v13, v0

    move v15, v9

    .line 141
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    .line 142
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 143
    aget-object v1, v0, v9

    move-object/from16 v16, v1

    check-cast v16, Lcom/miui/home/launcher/IShortcutIcon;

    .line 144
    aget-object v1, v0, v11

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    .line 145
    aget-object v0, v0, v10

    move-object v3, v0

    check-cast v3, [I

    .line 146
    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    .line 148
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v0, v5

    move-object v1, v7

    move-object/from16 p1, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V

    .line 149
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    if-ne v15, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->getToTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move-object v4, v0

    .line 150
    rem-int/lit8 v0, v15, 0x2

    if-nez v0, :cond_7

    move v3, v12

    goto :goto_4

    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    move v3, v0

    .line 151
    :goto_4
    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v9, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/Launcher;FLjava/lang/Object;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->setListener(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;)V

    .line 179
    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

    invoke-interface/range {v16 .. v16}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object v2

    move/from16 v3, p3

    invoke-static {v2, v6, v3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getNeedHideView(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    .line 180
    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x3c

    add-long/2addr v13, v4

    .line 182
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    return-void
.end method

.method private static getNeedHideView(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Z)Landroid/view/View;
    .locals 0

    .line 194
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object p1

    .line 195
    invoke-static {p2, p1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->isDoBoomAnimWhenBlurDragContainer(ZLcom/miui/home/launcher/widget/DragContainerLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 196
    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->setShortcutRemoved(Z)V

    const/4 p0, 0x0

    .line 197
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/IShortcutIcon;
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method public static iconBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static isBoomAnimating()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->isBoomAnimating:Z

    return v0
.end method

.method private static isDoBoomAnimWhenBlurDragContainer(ZLcom/miui/home/launcher/widget/DragContainerLayout;)Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 207
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static playDeleteSound(Lcom/miui/home/launcher/Launcher;F)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object p0

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->getEnableDeleteSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    :cond_0
    return-void
.end method

.method public static widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[IZ)V
    .locals 7

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    .line 58
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    goto :goto_0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto :goto_0

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 67
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->captureSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    if-nez p3, :cond_4

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v6

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, p3

    add-int/2addr v3, v4

    aput v3, v0, v6

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, p3

    add-int/2addr v4, v5

    aput v4, v0, v3

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, p3

    .line 79
    :goto_1
    new-instance p3, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V

    .line 83
    invoke-virtual {p1, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 84
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;

    invoke-direct {v0, p3, p0, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/Launcher;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->setListener(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;)V

    .line 104
    new-instance p2, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

    invoke-static {p1, p0, p4}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getNeedHideView(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    const-wide/16 p0, 0x0

    .line 105
    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 106
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 68
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
