.class public Lcom/miui/home/launcher/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private mLiteFancyIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03001c

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    return-void
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 149
    const-class v3, Ljava/lang/String;

    const-class v4, Lmiui/content/res/IconCustomizer;

    const-class v7, Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x6

    new-array v8, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v3, v8, v6

    const/4 v10, 0x2

    aput-object v3, v8, v10

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v3, v8, v11

    const-class v3, Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x4

    aput-object v3, v8, v12

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x5

    aput-object v3, v8, v13

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v9

    aput-object v1, v3, v6

    aput-object v2, v3, v10

    .line 151
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    aput-object p4, v3, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v13

    const/4 v5, 0x0

    const-string v6, "getIcon"

    move-object v9, v3

    .line 149
    invoke-static/range {v4 .. v9}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 153
    invoke-static {p0, p1, v2, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method private getLayerAdaptiveDrawable(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    invoke-static {p2}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->getMonochrome(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 130
    new-instance p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-object p0

    .line 132
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->getColor()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/high16 v0, -0x1000000

    .line 134
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 135
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;
    .locals 1

    .line 50
    new-instance v0, Lcom/miui/home/launcher/IconProvider;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 61
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 68
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v9, v0

    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/MamlUtils;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v2

    .line 72
    :goto_1
    :try_start_1
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez v2, :cond_4

    if-nez v9, :cond_3

    .line 74
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 76
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v8

    .line 74
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v9, v2

    :cond_3
    if-nez v9, :cond_4

    .line 78
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 79
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 80
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 81
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v1

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 87
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, v9, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_7

    .line 88
    move-object v1, v9

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    :cond_6
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/IconProvider;->getLayerAdaptiveDrawable(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception p0

    .line 96
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActivityIcon: Fail! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    :cond_7
    :goto_3
    if-eqz v9, :cond_8

    .line 98
    invoke-static {v9}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->isCustomizeIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 99
    invoke-static {v9}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->registerCustomizeIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-object v9

    :cond_9
    :goto_4
    return-object v0
.end method

.method public getBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v6, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getDisplayBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    sget-boolean p1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    if-eqz p1, :cond_0

    const p1, 0x1080093

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10d0000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method
