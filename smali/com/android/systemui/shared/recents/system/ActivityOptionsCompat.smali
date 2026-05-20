.class public abstract Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# static fields
.field public static final SPLIT_SCREEN_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_SCREEN_CREATE_MODE_TOP_OR_LEFT:I = 0x0

.field public static final TYPE_RECENTS_ANIMATION:I = 0x4

.field private static isSupportSmallWindowDealSecurityCenter:Z = false

.field private static sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 50
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getActivityOptions"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->isSupportSmallWindowDealSecurityCenter:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 3

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 88
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOverrideTaskTransition"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static makeFreeformActivityOptions(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/ActivityOptions;
    .locals 13

    const/4 v6, 0x0

    .line 127
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->isSupportSmallWindowDealSecurityCenter:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.util.MiuiMultiWindowUtils"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 129
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v9, "getActivityOptions"

    const-class v10, Landroid/app/ActivityOptions;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v11, v3

    const-class v0, Landroid/content/ComponentName;

    aput-object v0, v11, v2

    new-array v12, v4, [Ljava/lang/Object;

    aput-object p0, v12, v3

    aput-object p1, v12, v2

    const/4 v8, 0x0

    .line 128
    invoke-static/range {v7 .. v12}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions;

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getActivityOptions"

    const-class v7, Landroid/app/ActivityOptions;

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p0, v9, v3

    .line 138
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v9, v4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v9, v10

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "MiuiMultiWindowUtils getActivityOptions error"

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v6, :cond_1

    .line 144
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 145
    invoke-static {v6}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    .line 146
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_1
    return-object v6
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;
    .locals 8

    .line 80
    const-class v0, Landroid/app/ActivityOptions;

    const-class v3, Landroid/app/ActivityOptions;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/RemoteAnimationAdapter;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Landroid/window/RemoteTransition;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    aput-object p0, v7, v5

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p0

    aput-object p0, v7, v6

    const/4 v1, 0x0

    const-string v2, "makeRemoteAnimation"

    move-object v5, v7

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 3

    .line 61
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    xor-int/lit8 p0, p0, 0x1

    .line 63
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-object v0
.end method

.method public static setFreezeRecentTasksReordering(Landroid/app/ActivityOptions;)V
    .locals 4

    .line 155
    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.app.ActivityOptions"

    .line 156
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setFreezeRecentTasksReordering"

    new-array v3, v1, [Ljava/lang/Class;

    .line 157
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    .line 159
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSmallWindowRemberLaunch(Landroid/app/ActivityOptions;)V
    .locals 7

    .line 102
    const-class v0, Landroid/app/ActivityOptions;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x4

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const-string/jumbo v2, "setMiuiConfigFlag"

    move-object v1, p0

    move-object v5, v6

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setSourceInfo(Landroid/app/ActivityOptions;IJ)V
    .locals 8

    .line 115
    const-class v0, Landroid/app/ActivityOptions;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    .line 121
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-string/jumbo v2, "setSourceInfo"

    move-object v1, p0

    move-object v5, v7

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setTransientLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 6

    .line 107
    const-class v0, Landroid/app/ActivityOptions;

    const-class v3, Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setTransientLaunch"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityOptions;

    return-object p0
.end method
