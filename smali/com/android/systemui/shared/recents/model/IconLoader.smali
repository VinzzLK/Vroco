.class public Lcom/android/systemui/shared/recents/model/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# static fields
.field public static final IS_MIUI_LITE_DEVICE:Z

.field public static final IS_MIUI_MIDDLE_DEVICE:Z

.field private static final TAG:Ljava/lang/String; = "IconLoader"

.field private static sGetIconMethod:Ljava/lang/reflect/Method;


# instance fields
.field protected final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDeviceLevel:I

.field protected final mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mMetrics:Landroid/util/DisplayMetrics;

.field mPm:Landroid/content/pm/PackageManager;

.field protected final mTempCachingList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTempKeyList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiLiteVersion()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    .line 74
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiMiddleVersion()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_MIDDLE_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mMetrics:Landroid/util/DisplayMetrics;

    .line 67
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 69
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    iput p4, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDeviceLevel:I

    return-void
.end method

.method private convertToDrawingLiteDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 317
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 318
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 320
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v1

    const/high16 v2, 0x42280000    # 42.0f

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/model/IconLoader;->dp2px(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 321
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/model/IconLoader;->dp2px(F)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lez v1, :cond_1

    if-gtz p0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 326
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->convertToDrawingLiteDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 97
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 99
    :try_start_0
    sget-object v4, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    if-nez v4, :cond_0

    .line 100
    const-class v4, Lmiui/content/res/IconCustomizer;

    const-string v12, "getIcon"

    const-class v13, Landroid/graphics/drawable/Drawable;

    new-array v14, v11, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v10

    aput-object v2, v14, v9

    aput-object v2, v14, v8

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v7

    const-class v16, Landroid/content/pm/ApplicationInfo;

    aput-object v16, v14, v6

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v5

    .line 101
    invoke-static {v13, v14}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    aput-object v17, v14, v10

    aput-object v2, v14, v9

    aput-object v2, v14, v8

    aput-object v15, v14, v7

    const-class v2, Landroid/content/pm/ApplicationInfo;

    aput-object v2, v14, v6

    aput-object v16, v14, v5

    .line 100
    invoke-static {v4, v12, v13, v14}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    .line 104
    :cond_0
    sget-object v2, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    new-array v4, v11, [Ljava/lang/Object;

    move-object/from16 v11, p0

    iget-object v11, v11, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    aput-object v11, v4, v10

    aput-object v0, v4, v9

    aput-object v1, v4, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    aput-object p5, v4, v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    move-object/from16 v4, p1

    .line 106
    :try_start_1
    invoke-static {v4, v0, v1, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "IconLoader"

    const-string v2, "invokeObject"

    .line 109
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    :cond_1
    :goto_1
    return-object v2
.end method

.method private getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 124
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 125
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    :cond_2
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getOperationIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 347
    :cond_0
    sget-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;->getInstance()Lcom/miui/home/library/publishservice/PublishServiceManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/library/publishservice/OperationIconService;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/publishservice/PublishServiceManager;->getService(Ljava/lang/Class;)Lcom/miui/home/library/publishservice/IPublishService;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/publishservice/OperationIconService;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/miui/home/library/publishservice/OperationIconService;->getIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static isMiuiLiteOrMiddleVersion()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_MIDDLE_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    .line 79
    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "IconLoader"

    const-string v2, "reflect failed when get is miui lite device"

    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isMiuiMiddleVersion()Z
    .locals 1

    .line 88
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dp2px(F)I
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    if-eqz p4, :cond_4

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/systemui/shared/recents/model/IconLoader;->getOperationIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-nez p4, :cond_2

    .line 152
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiLiteOrMiddleVersion()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 155
    :cond_1
    iget p4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p4, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 159
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p2

    const-string p3, "IconLoader"

    const-string p4, "getBadgedTaskDescriptionIcon error"

    .line 163
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 169
    iget p3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 171
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 236
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 242
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 244
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected null component name or activity info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-wide/32 v4, 0x2932e00

    invoke-static {v0, v3, v2, v4, v5}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v1, p1

    .line 201
    :cond_3
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "IconLoader"

    const-string v2, "getBadgedActivityIcon error"

    .line 205
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_4
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 215
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    invoke-static {p1}, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->getIconFilename()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 221
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public getIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_4

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getOperationIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 285
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 288
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 293
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 293
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 307
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->convertToDrawingLiteDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 309
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public updateTempToCache()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->maxSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->updateTempToCache(I)V

    return-void
.end method

.method public updateTempToCache(I)V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_0
    sub-int v3, v1, p1

    if-le v2, v3, :cond_2

    if-ltz v2, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_1

    .line 264
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempKeyList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 272
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mTempCachingList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
