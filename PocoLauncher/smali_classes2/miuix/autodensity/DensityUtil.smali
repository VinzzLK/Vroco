.class public Lmiuix/autodensity/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sIsSupportSwitchResolution:Z

.field private static sLock:Ljava/lang/Object;

.field private static sResourcesImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    .line 49
    :try_start_0
    const-class v1, Landroid/app/ResourcesManager;

    new-array v2, v0, [Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 50
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 51
    const-class v2, Landroid/app/ResourcesManager;

    const-string v3, "mResourceImpls"

    invoke-static {v2, v1, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 52
    sget-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    .line 58
    :try_start_1
    const-class v2, Landroid/app/ResourcesManager;

    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v4, "mLock"

    invoke-static {v2, v3, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_1
    sput-object v1, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 63
    :goto_0
    sget-object v2, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v3, "AutoDensity"

    if-eqz v2, :cond_0

    sget-object v2, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    sget-object v2, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "ResourcesManager reflection failed, this app do not have permission to disable AutoDensity for activity/application"

    .line 64
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_2
    const-string v2, "miui.util.FeatureParser"

    .line 69
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getIntArray"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 70
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "screen_resolution_supported"

    aput-object v8, v7, v0

    .line 71
    invoke-static {v2, v1, v4, v6, v7}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    .line 73
    array-length v0, v0

    if-le v0, v5, :cond_2

    .line 74
    sput-boolean v5, Lmiuix/autodensity/DensityUtil;->sIsSupportSwitchResolution:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DensityUtil init screen_resolution_supported Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private static changeDensity(Landroid/content/res/Resources;I)V
    .locals 3

    .line 195
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-eq v1, v2, :cond_1

    .line 199
    :cond_0
    invoke-static {v0, p0, p1}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    .line 200
    invoke-static {}, Lmiuix/autodensity/AutoDensityConfig;->shouldUpdateSystemResource()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 201
    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    :cond_1
    return-void
.end method

.method public static doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V
    .locals 6

    .line 207
    invoke-static {p1, p0}, Lmiuix/autodensity/DensityUtil;->tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V

    .line 210
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 213
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lmiuix/view/DisplayConfig;->density:F

    div-float/2addr v2, v4

    if-lez p2, :cond_0

    int-to-float v5, p2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    int-to-float v1, v1

    mul-float/2addr v5, v4

    div-float v3, v1, v5

    .line 217
    :cond_0
    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-float/2addr v4, v3

    .line 218
    iput v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 219
    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 220
    iget p0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput p0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after doChangeDensity baseWidthDp:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ratio:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public static findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;
    .locals 1

    .line 158
    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 159
    check-cast p0, Landroid/view/ContextThemeWrapper;

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/AutoDensityContextWrapper;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lmiuix/autodensity/AutoDensityContextWrapper;

    return-object p0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "findOrCreateResourcesImplForKeyLocked failed "

    .line 264
    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 265
    const-class v5, Landroid/content/res/ResourcesKey;

    const-string v6, "mOverrideConfiguration"

    invoke-static {v5, v0, v6}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 266
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x23

    if-lt v6, v7, :cond_0

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    .line 270
    :cond_0
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    move-object/from16 v5, p1

    .line 272
    iget v5, v5, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 274
    const-class v5, Landroid/content/res/ResourcesKey;

    const-string v6, "mDisplayId"

    invoke-static {v5, v0, v6}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 275
    const-class v6, Landroid/content/res/ResourcesKey;

    const-string v7, "mLibDirs"

    invoke-static {v6, v0, v7}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 276
    const-class v7, Landroid/content/res/ResourcesKey;

    const-string v8, "mCompatInfo"

    invoke-static {v7, v0, v8}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .line 283
    const-class v8, Landroid/content/res/ResourcesKey;

    const-string v9, "mOverlayPaths"

    invoke-static {v8, v0, v9}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 300
    const-class v9, Landroid/content/res/ResourcesKey;

    const-string v10, "mLoaders"

    invoke-static {v9, v0, v10}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/res/loader/ResourcesLoader;

    .line 301
    const-class v10, Landroid/content/res/ResourcesKey;

    const/16 v11, 0x8

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v15, 0x2

    aput-object v2, v12, v15

    const/16 v16, 0x3

    aput-object v2, v12, v16

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v2, v12, v17

    const-class v2, Landroid/content/res/Configuration;

    const/16 v18, 0x5

    aput-object v2, v12, v18

    const-class v2, Landroid/content/res/CompatibilityInfo;

    const/16 v19, 0x6

    aput-object v2, v12, v19

    const-class v2, [Landroid/content/res/loader/ResourcesLoader;

    const/16 v20, 0x7

    aput-object v2, v12, v20

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v11, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    aput-object v11, v2, v14

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    aput-object v0, v2, v13

    aput-object v8, v2, v15

    aput-object v6, v2, v16

    .line 314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v17

    aput-object v4, v2, v18

    aput-object v7, v2, v19

    aput-object v9, v2, v20

    .line 301
    invoke-static {v10, v12, v2}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newKey "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 317
    const-class v2, Landroid/app/ResourcesManager;

    sget-object v4, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v5, "findOrCreateResourcesImplForKeyLocked"

    new-array v6, v13, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/ResourcesKey;

    aput-object v7, v6, v14

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v14

    invoke-static {v2, v4, v5, v6, v7}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method

.method private static findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 4

    .line 250
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 252
    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    :cond_0
    if-ne p0, v2, :cond_1

    .line 255
    sget-object p0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ResourcesKey;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 369
    :catch_0
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "display"

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getNoDensityOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 0

    .line 171
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Lmiuix/autodensity/AutoDensityContextWrapper;->getNoOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSynergyOwnerDevice(Landroid/view/Display;)Ljava/lang/String;
    .locals 3

    .line 413
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ":"

    .line 417
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSupportSwitchResolution()Z
    .locals 1

    .line 358
    sget-boolean v0, Lmiuix/autodensity/DensityUtil;->sIsSupportSwitchResolution:Z

    return v0
.end method

.method public static restoreDefaultDensity(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AutoDensity"

    const-string v1, "restoreDefaultDensity context should not null"

    .line 83
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 86
    :cond_0
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->restoreDensity(Landroid/content/res/Resources;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static restoreDensity(Landroid/content/res/Resources;)Z
    .locals 4

    .line 182
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 185
    iget v3, v0, Lmiuix/view/DisplayConfig;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_0

    const-string v1, "restoreDensity success"

    .line 186
    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 187
    invoke-static {v0, p0, v2}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method private static setDefaultBitmapDensity(I)V
    .locals 7

    .line 341
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const-string v2, "setDefaultDensity"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultBitmapDensity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflect exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSystemResources(Lmiuix/view/DisplayConfig;)V
    .locals 4

    .line 328
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 329
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 330
    iget v2, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 331
    iget v2, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 332
    iget v2, p0, Lmiuix/view/DisplayConfig;->density:F

    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 333
    iget v2, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 334
    iget v2, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-static {v2}, Lmiuix/autodensity/DensityUtil;->setDefaultBitmapDensity(I)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemResources "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " defaultBitmapDensity:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldProcessDensity(Landroid/content/Context;Landroid/view/Display;)Z
    .locals 3

    .line 384
    invoke-static {p0, p1}, Lmiuix/os/DeviceHelper;->isCarWithScreen(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "shouldProcessDensity isCarWithScreen"

    .line 385
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return v1

    .line 389
    :cond_0
    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isXiaomiSynergy(Landroid/content/Context;)Z

    move-result p0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessDensity isSynergy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 392
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getSynergyOwnerDevice(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Windows"

    .line 393
    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "AndroidPad"

    .line 396
    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p0

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_2
    const-string v2, "AndroidPadCar"

    .line 401
    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 403
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method

.method public static shouldUpdateDensityForConfig(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 139
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V
    .locals 7

    .line 228
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    if-eqz v0, :cond_2

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :try_start_1
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-static {v1, p0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    .line 234
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 237
    invoke-static {v1, p1}, Lmiuix/autodensity/DensityUtil;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "setImpl"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/ResourcesImpl;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set impl success "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 243
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryToCreateAndSetResourcesImpl failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;)V
    .locals 9

    if-nez p0, :cond_0

    const-string p0, "AutoDensity"

    const-string v0, "updateCustomDensity context should not null"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCustomDensity context is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 100
    instance-of v1, p0, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_1

    .line 101
    move-object v0, p0

    check-cast v0, Lmiuix/autodensity/IDensity;

    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->getRatioUiBaseWidthDp()I

    move-result v0

    :cond_1
    const/4 v1, 0x1

    .line 104
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 105
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 107
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    .line 108
    invoke-static {v1, v3}, Lmiuix/autodensity/DensityUtil;->shouldProcessDensity(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v4

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCustomDensity -> display is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "null"

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {v3}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " shouldProcessDensity="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " activity is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " config is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    if-nez v4, :cond_4

    .line 114
    iget v5, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 115
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lmiuix/autodensity/DensityConfigManager;->getDeviceCurrentAccessibilityDpi()I

    move-result v8

    if-ne v5, v8, :cond_4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCustomDensity -> will not changeDensity cause display is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {v3}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", try restore density, activity is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 119
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    :cond_4
    move v1, v4

    :cond_5
    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v0}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;I)V

    :cond_6
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;I)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "AutoDensity"

    const-string p1, "context should not null"

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;I)V

    :cond_1
    return-void
.end method

.method public static updateDensityForConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 3

    .line 147
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 151
    invoke-static {v0, p0, v1}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
