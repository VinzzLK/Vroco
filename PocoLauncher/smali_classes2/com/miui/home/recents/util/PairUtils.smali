.class public Lcom/miui/home/recents/util/PairUtils;
.super Ljava/lang/Object;
.source "PairUtils.java"


# static fields
.field private static final PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/PairUtils;->PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.securitymanager"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPairIconToWorkspace(Lcom/miui/home/launcher/PairShortcutInfo;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Z)V
    .locals 8

    .line 135
    invoke-static {}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->getInstance()Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->beginWithDefaultView(I)V

    .line 136
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 137
    invoke-static {p0}, Lcom/miui/home/recents/util/PairUtils;->getShortcutIntent(Lcom/miui/home/launcher/PairShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 138
    invoke-virtual {v4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "iconType"

    const/4 v1, 0x7

    .line 139
    invoke-virtual {v4, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 140
    invoke-virtual {v4, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/miui/home/recents/util/PairUtils$1;

    invoke-direct {v7, p1, p3, p0}, Lcom/miui/home/recents/util/PairUtils$1;-><init>(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/PairShortcutInfo;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    .line 143
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V

    return-void
.end method

.method public static createPairBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v3, v1

    const v4, 0x3ec28f5c    # 0.38f

    mul-float v5, v3, v4

    float-to-int v5, v5

    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v4, v6

    .line 99
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v6}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 101
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 102
    invoke-virtual {p0, v8, v8, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 105
    div-int/lit8 p0, v1, 0x2

    sub-int/2addr p0, v5

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v7, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {p1, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-float/2addr v3, v2

    const/4 p0, 0x0

    .line 108
    invoke-virtual {v7, v3, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    invoke-virtual {p2, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 112
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v6

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static enterAppPairFromShortCut(Ljava/lang/Object;Landroid/app/ActivityOptions;)Ljava/lang/Object;
    .locals 5

    .line 192
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 195
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v0, :cond_1

    .line 196
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 197
    iget-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x67

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 198
    const-class p0, Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "setEnterAppPairFromShortCut"

    invoke-static {p1, p0, v3, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/miui/home/launcher/AppInfo;"
        }
    .end annotation

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    .line 55
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    if-ne v1, p2, :cond_1

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/PairUtils;->PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 58
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    .line 60
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findPairShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Lcom/miui/home/launcher/PairShortcutInfo;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v0, v2}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v2, p0}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v0, p0}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    move-object p0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseAppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-nez p1, :cond_3

    return-object v1

    .line 88
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/PairShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-object v0
.end method

.method public static getShortcutIntent(Lcom/miui/home/launcher/PairShortcutInfo;)Landroid/content/Intent;
    .locals 2

    .line 182
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result p0

    .line 185
    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/PairUtils;->initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "app_pair_package_name"

    .line 174
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_pair_user_id"

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static isSupportAddPairFromRecent()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    return v0
.end method
