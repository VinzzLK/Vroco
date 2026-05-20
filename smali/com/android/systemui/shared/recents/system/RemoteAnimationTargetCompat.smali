.class public Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetCompat.java"


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I


# instance fields
.field public final activityType:I

.field public final clipRect:Landroid/graphics/Rect;

.field public final contentInsets:Landroid/graphics/Rect;

.field public cornerRadius:F

.field public isElement:Z

.field public final isNotInRecents:Z

.field public final isTranslucent:Z

.field public final leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field public final mode:I

.field public packageName:Ljava/lang/String;

.field public position:Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final prefixOrderIndex:I

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field public final startBounds:Landroid/graphics/Rect;

.field public target:Landroid/view/RemoteAnimationTarget;

.field public final taskId:I

.field public windowMode:I

.field public windowType:I


# direct methods
.method public static synthetic $r8$lambda$WTTfJKeycifAH8vJHCf_e34440Q(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->lambda$wrapNonAppsForCompat$1(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q7rUMlyrd1QMBdcU6N_g74LGEPQ(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    .line 58
    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowMode:I

    .line 78
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->target:Landroid/view/RemoteAnimationTarget;

    .line 79
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    .line 80
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    .line 81
    new-instance v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    .line 82
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 83
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initPosition(Landroid/view/RemoteAnimationTarget;)V

    .line 85
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 86
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 87
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 88
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    .line 89
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Lmiui/content/res/WindowConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/WindowConfigurationExpose;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/WindowConfigurationExpose;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    .line 90
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initPackageName(Landroid/view/RemoteAnimationTarget;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initWindowType(Landroid/view/RemoteAnimationTarget;)V

    .line 93
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Lmiui/content/res/WindowConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/WindowConfigurationExpose;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/WindowConfigurationExpose;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowMode:I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->obtainElement(Landroid/view/RemoteAnimationTarget;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->obtainCornerRadius(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method private initPackageName(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 132
    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 135
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initPosition(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    :goto_0
    return-void
.end method

.method private initWindowType(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 145
    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string/jumbo v1, "windowType"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 247
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$wrapNonAppsForCompat$1(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 253
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private obtainCornerRadius(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 100
    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string v1, "cornerRadius"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->cornerRadius:F

    const-string p1, "TAG"

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->cornerRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private obtainElement(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 112
    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string v1, "isElement"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 115
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    const-string p1, "TAG"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method protected static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;Z",
            "Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;",
            ")[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v1

    const/4 v2, 0x0

    .line 207
    :goto_0
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 208
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 209
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v5, p3

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v7, v3, v2

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    .line 212
    invoke-static/range {v6 .. v12}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 185
    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    .line 187
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 188
    new-instance v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;Z",
            "Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;",
            ")[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v3}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    .line 233
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, p2, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;",
            ")[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isDockDivider()Z
    .locals 1

    .line 159
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeActivityType()Z
    .locals 1

    .line 155
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiWindow()Z
    .locals 1

    .line 163
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowMode:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAnimationTargetCompat{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTranslucent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceContainerBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefixOrderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotInRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrap()Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->target:Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method
