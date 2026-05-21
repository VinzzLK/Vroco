.class public Lcom/miui/home/launcher/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

.field public static final SYSTEM_WALLPAPER_RUNTIME_PATH:Ljava/lang/String;

.field private static mCurrentMiuiWallpaperType:Ljava/lang/String;

.field private static mGetHomeScreening:Z

.field private static mIsInResume:Z

.field private static mIsUserCache:Z

.field private static mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

.field private static mTmpPoint:Landroid/graphics/Point;

.field private static sBytesForInt:[B

.field private static sBytesForShort:[B

.field private static sCurrentStatusBarAreaColorMode:I

.field private static sCurrentWallpaperColorMode:I

.field public static sDefaultLockWallpaperProvider:Ljava/lang/String;

.field private static sIsCurrentWallpaperScrollable:Z

.field private static final sPickerIntent:Landroid/content/Intent;

.field private static final sPresetWallpaperPicker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchBarAreaColorMode:I

.field private static sWallpaperLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$32f9LVyDZfehOZnnX2Gb-vTTG7Y(ZLandroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->lambda$sendLockWallpaperBroadcast$1(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6I4H1msdOImLPflg0PPzUHiPW7o(Ljava/util/List;Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Launcher;ZZLandroid/graphics/Canvas;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/WallpaperUtils;->lambda$getDefaultScreenPreview$0(Ljava/util/List;Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Launcher;ZZLandroid/graphics/Canvas;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 87
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 88
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 96
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    .line 97
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    .line 100
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    .line 101
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mGetHomeScreening:Z

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/WallpaperUtils;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 105
    sput-object v2, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForInt:[B

    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 106
    sput-object v2, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForShort:[B

    .line 108
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsInResume:Z

    .line 111
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/wallpaper"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/WallpaperUtils;->SYSTEM_WALLPAPER_RUNTIME_PATH:Ljava/lang/String;

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.OPENABLE"

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image/*"

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.wallpaper.livepicker"

    const-string v4, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsUserCache:Z

    .line 239
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$000(Z)Z
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    return p0
.end method

.method private static autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1067
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1068
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int p2, v3

    .line 1070
    new-instance v0, Lcom/miui/home/library/utils/Graphics$CropOption;

    invoke-direct {v0}, Lcom/miui/home/library/utils/Graphics$CropOption;-><init>()V

    .line 1071
    new-instance v2, Landroid/graphics/Rect;

    .line 1072
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v2, v1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 1073
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1074
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 1073
    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1075
    invoke-static {p1, p0, v0}, Lcom/miui/home/library/utils/Graphics;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/miui/home/library/utils/Graphics$CropOption;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1077
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object p0

    .line 1080
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1082
    throw p0
.end method

.method public static backupLockScreenSrc(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1003
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_lock_wallpaper"

    .line 1004
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1005
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pref_key_lock_wallpaper_path"

    .line 1006
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {v0, p0}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 1

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 663
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p4, p5

    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 664
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_1

    .line 666
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 667
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 669
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 670
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p3, p5

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 672
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p3, p5

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 673
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p4, p5

    add-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 676
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 677
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 372
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onScreenColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    .line 373
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static clearWallpaperSrc()V
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 194
    invoke-static {v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    .line 653
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 657
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    .line 658
    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static correctHomeScreenPreview(IZZI)Landroid/graphics/Bitmap;
    .locals 2

    .line 327
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->checkDarkMode()V

    .line 331
    sget v1, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    if-eq v1, p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    .line 333
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 334
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    .line 335
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZI)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 336
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 337
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZI)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10

    .line 623
    new-instance v0, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 624
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 p1, 0x5a

    if-eq p5, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 628
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->computeSampleSizeLarger(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p3

    .line 626
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->computeSampleSizeLarger(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    const/4 p1, 0x0

    .line 632
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 641
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    .line 635
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 643
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 645
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 646
    iget v9, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v4, p5

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v9}, Lcom/miui/home/launcher/WallpaperUtils;->drawInTiles(Landroid/graphics/Canvas;ILandroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;III)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 638
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    :goto_2
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 642
    throw p0
.end method

.method public static drawHotSeat(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Launcher;Z)V
    .locals 9

    .line 462
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    if-eqz p2, :cond_1

    const/16 p2, 0x64

    .line 468
    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result p2

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getNavigationBarSpaceHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    const/4 v2, 0x0

    .line 471
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int/2addr v1, v3

    int-to-float v3, v1

    .line 472
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v7, 0x1f

    move-object v1, p0

    move-object v6, v8

    .line 471
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    const/4 v1, 0x0

    .line 473
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int/2addr v2, v3

    int-to-float p2, v2

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 475
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 478
    invoke-static {p0, v8, p1}, Lcom/miui/home/launcher/WallpaperUtils;->drawSearchBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/miui/home/launcher/Launcher;)V

    :cond_2
    return-void
.end method

.method private static drawInTiles(Landroid/graphics/Canvas;ILandroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;III)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    mul-int/lit16 v9, v3, 0x200

    .line 683
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 684
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 685
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 686
    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v7, v5, :cond_1

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 691
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 688
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 695
    :goto_1
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eq v7, v5, :cond_3

    if-ne v7, v4, :cond_2

    goto :goto_2

    .line 696
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_3
    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_4

    goto :goto_4

    .line 697
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 698
    :goto_5
    div-int v14, v1, v9

    .line 699
    div-int v15, v2, v9

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_6
    if-gt v6, v14, :cond_9

    move/from16 v5, v16

    :goto_7
    if-gt v5, v15, :cond_8

    move-object v1, v10

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v6

    move/from16 p4, v5

    move/from16 v17, v6

    move v6, v9

    .line 702
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/WallpaperUtils;->calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    move-object/from16 v1, p3

    .line 703
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 707
    monitor-enter p2

    .line 708
    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 709
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 710
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v7, :cond_6

    .line 712
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v7

    .line 713
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 715
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 716
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    .line 715
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 717
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_6
    move/from16 v3, v17

    mul-int/lit16 v6, v3, 0x200

    int-to-float v4, v6

    move/from16 v5, p4

    mul-int/lit16 v6, v5, 0x200

    int-to-float v6, v6

    .line 719
    invoke-virtual {v0, v2, v4, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 720
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 709
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move/from16 v5, p4

    move/from16 v3, v17

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    goto :goto_7

    :cond_8
    move-object/from16 v1, p3

    move v3, v6

    add-int/lit8 v6, v3, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public static drawIndicator(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Workspace;)V
    .locals 3

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    if-nez p1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 453
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getNavigationBarSpaceHeight(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    .line 454
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 455
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 454
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    invoke-virtual {v0, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    .line 439
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 440
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V

    .line 441
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawSearchBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/miui/home/launcher/Launcher;)V
    .locals 10

    .line 490
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 495
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v2

    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->getNavigationBarSpaceHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr v2, p2

    const/4 v4, 0x0

    .line 496
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p2

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    int-to-float v5, p2

    .line 497
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    int-to-float v6, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p2

    int-to-float v7, p2

    const/16 v9, 0x1f

    move-object v3, p0

    move-object v8, p1

    .line 496
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 499
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    .line 498
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 500
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 501
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getCurrentWallpaperColorMode()I
    .locals 1

    .line 232
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return v0
.end method

.method private static getDefaultHomeScreenTopLayer(ZZI)Landroid/graphics/Bitmap;
    .locals 11

    .line 529
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    .line 533
    :cond_0
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 535
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 536
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    if-ne p2, v9, :cond_2

    move p2, v9

    goto :goto_0

    :cond_2
    move p2, v8

    :goto_0
    if-eqz v1, :cond_3

    move v2, v9

    goto :goto_1

    :cond_3
    move v2, v8

    .line 539
    :goto_1
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 540
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/miui/home/launcher/WallpaperUtils;->mGetHomeScreening:Z

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/miui/home/launcher/WallpaperUtils;->mIsUserCache:Z

    if-eqz v4, :cond_4

    goto/16 :goto_5

    .line 545
    :cond_4
    sput-boolean v9, Lcom/miui/home/launcher/WallpaperUtils;->mGetHomeScreening:Z

    .line 546
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object v10

    .line 547
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v8

    .line 548
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 549
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 553
    :cond_5
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isLauncherReady()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 554
    invoke-static {v10, p0, v6, v3, p1}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenPreview(Ljava/util/List;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 557
    sput-boolean v8, Lcom/miui/home/launcher/WallpaperUtils;->mGetHomeScreening:Z

    return-object v0

    .line 560
    :cond_6
    invoke-static {p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->saveBitmapInFile(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 563
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultHomeScreenTopLayer result==null: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8

    move v1, v9

    goto :goto_3

    :cond_8
    move v1, v8

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Launcher_WallpaperUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_9

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    :cond_9
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v8

    .line 568
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_a

    .line 569
    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    if-nez v0, :cond_b

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    :cond_b
    sput-boolean v8, Lcom/miui/home/launcher/WallpaperUtils;->mGetHomeScreening:Z

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDefaultHomeScreenTopLayer result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    move v8, v9

    :cond_c
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 542
    :cond_d
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    .line 348
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getAllIndexesOnScreen(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 349
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 350
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getDefaultScreenPreview(Ljava/util/List;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;Z)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;Z",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/Workspace;",
            "Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    new-instance v8, Lcom/miui/home/launcher/WallpaperUtils$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/WallpaperUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Launcher;ZZ)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, v8}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDefaultHomeScreenTopLayer createHardwareBitmapWithAcceleratedCanvas result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher_WallpaperUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getFileName(ZZ)Ljava/lang/String;
    .locals 1

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "preview_large"

    goto :goto_0

    :cond_0
    const-string p0, "preview_normal"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, "_only_shortcut"

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIconTitleShadowColor()I
    .locals 5

    .line 316
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    const-wide v1, 0x3fd51eb851eb851fL    # 0.33

    const/16 v3, 0xff

    if-nez v0, :cond_0

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    shl-int/lit8 v0, v0, 0x18

    return v0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static getLastRequestLockWallpaperTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    const-wide/16 v1, 0x0

    .line 1169
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_wallpaper_provider_authority"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLockWallpaperUpdateMinute(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    const/16 v1, 0xb4

    .line 1160
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getNavigationBarSpaceHeight(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 486
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1096
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1098
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1102
    :cond_1
    :try_start_0
    invoke-static {v0, p0}, Lcom/miui/home/library/utils/Graphics;->getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1110
    new-instance v3, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v3, v0, p0}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1111
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->getImageRotation(Ljava/io/InputStream;)I

    move-result v5

    .line 1112
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v5, v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_0

    .line 1113
    :cond_2
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    if-eq v5, v4, :cond_5

    if-ne v5, v3, :cond_4

    goto :goto_2

    .line 1114
    :cond_4
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_3

    :cond_5
    :goto_2
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_3
    move v4, v1

    move-object v1, p0

    move v3, v6

    .line 1115
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/WallpaperUtils;->decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1105
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static getSampleRatio(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;
    .locals 3

    .line 909
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 910
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 912
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 915
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 916
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_2
    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 917
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_3

    iget p0, p0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_3
    iget p0, p0, Landroid/graphics/Point;->x:I

    :goto_3
    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public static getWallpaperColorModeInArea(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .locals 5

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 305
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 306
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 308
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 309
    invoke-static {p1, v2, v3, v0, p0}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getSampleRatio(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/Graphics;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 220
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 208
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {p0, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 212
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 216
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 524
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    return-object p0
.end method

.method public static hasAppliedLightWallpaper()Z
    .locals 2

    .line 228
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasLightBgForStatusBar()Z
    .locals 2

    .line 236
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasValidProvider(Landroid/content/Context;)Z
    .locals 3

    .line 1152
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.miui.home.none_provider"

    .line 1154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCurrentWallpaperScrollable()Z
    .locals 1

    .line 287
    sget-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return v0
.end method

.method public static isDefaultLockStyle()Z
    .locals 2

    .line 1186
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme//lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isKeyguardShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDoodleTemplate()Z
    .locals 7

    .line 1217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Launcher_WallpaperUtils"

    if-nez v0, :cond_0

    const-string v0, "isDoodleTemplate Application.getInstance()"

    .line 1218
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 1221
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "constant_lockscreen_info"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-static {v0}, Lcom/miui/home/launcher/common/JsonUtils;->getDoodleTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "doodle"

    .line 1223
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDoodleTemplate result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ";value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";key = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; json = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static isHasWallpaperSDK()Z
    .locals 5

    .line 1204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Launcher_WallpaperUtils"

    if-eqz v0, :cond_2

    .line 1205
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->couldSetEffectToDesktop()Z

    move-result v0

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasWallpaperEffectSdk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; isDefaultIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1210
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 1212
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDoodleTemplate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1206
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasWallpaperEffectSdk = false ; launcher = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isKeyguardShowLiveWallpaper()Z
    .locals 3

    .line 1120
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "keyguard_show_livewallpaper"

    .line 1122
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMiuiWallpaperComponentUsing()Z
    .locals 3

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->isMiuiWallpaperComponentUsing()Z

    move-result v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMiuiWallpaperComponentUsing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher_WallpaperUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProviderClosedByUser(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_provider_closed"

    const/4 v1, 0x1

    .line 1178
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSearchBarAreaLight()Z
    .locals 2

    .line 139
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStaticWallpaper()Z
    .locals 2

    .line 149
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mCurrentMiuiWallpaperType:Ljava/lang/String;

    const-string v1, "image"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mCurrentMiuiWallpaperType:Ljava/lang/String;

    const-string v1, "dark"

    .line 150
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mCurrentMiuiWallpaperType:Ljava/lang/String;

    const-string v1, "live_picker"

    .line 151
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mCurrentMiuiWallpaperType:Ljava/lang/String;

    const-string/jumbo v1, "super_save_power"

    .line 152
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isStaticWallpaper(Landroid/app/WallpaperManager;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getDefaultScreenPreview$0(Ljava/util/List;Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Launcher;ZZLandroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 506
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 507
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v4, v1, v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v1

    .line 508
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInScreenPreview(Z)V

    .line 509
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v4

    iget v5, p1, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v4, v5

    mul-int/2addr v2, v4

    invoke-static {p5, v3, p2, v2}, Lcom/miui/home/launcher/WallpaperUtils;->drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V

    .line 510
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInScreenPreview(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 513
    invoke-static {p5, p1}, Lcom/miui/home/launcher/WallpaperUtils;->drawIndicator(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Workspace;)V

    .line 514
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setIsDrawingInScreenPreview(Z)V

    .line 515
    invoke-static {p5, p2, p4}, Lcom/miui/home/launcher/WallpaperUtils;->drawHotSeat(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Launcher;Z)V

    .line 516
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->setIsDrawingInScreenPreview(Z)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$sendLockWallpaperBroadcast$1(ZLandroid/content/Context;)V
    .locals 2

    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "set_lock_wallpaper_result"

    .line 1196
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1197
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object v0
.end method

.method public static onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 252
    instance-of p0, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p0, :cond_0

    .line 253
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    return-void
.end method

.method private static onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->onWallpaperColorChanged()V

    return-void
.end method

.method private static onLockWallpaperChanged(Z)Z
    .locals 3

    .line 1031
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "currentWallpaperInfo"

    .line 1034
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_wallpaper_provider_authority"

    const-string v2, "com.miui.home.none_provider"

    invoke-static {p0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1038
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockScreenShowLiveWallpaper(Z)V

    .line 1040
    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsInResume:Z

    return-void
.end method

.method public static onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsInResume:Z

    const/4 v0, 0x0

    .line 181
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsUserCache:Z

    return-void
.end method

.method private static onScreenColorModeChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 359
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 360
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 361
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onWallpaperColorChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resetLockWallpaper(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 983
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "backup_lock_wallpaper"

    .line 984
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 985
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    .line 987
    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 989
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string p0, "pref_key_backed_up_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 990
    invoke-static {p0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "/data/system/theme/lock_wallpaper"

    .line 994
    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    const-string v1, ""

    .line 996
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 998
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V
    .locals 5

    .line 1132
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 1134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.thememanager.lockscreen_magazine_provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "com.android.thememanager.theme_lockwallpaper"

    .line 1135
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1136
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->isProviderClosedByUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-nez v3, :cond_5

    .line 1137
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/theme/lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 1140
    :cond_3
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideLockProvider(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1141
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 1142
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    const-string v3, "lock_wallpaper_provider_authority"

    invoke-static {v0, v3, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Launcher.WallpaperUtils"

    const-string v1, "reset Default Lock Wallpaper Provider"

    .line 1144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "currentWallpaperInfo"

    .line 1147
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 887
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 888
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 889
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 891
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p0, 0x1

    .line 899
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 902
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 895
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 899
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 902
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    if-eqz v0, :cond_2

    .line 899
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 902
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 904
    :cond_2
    :goto_5
    throw p0
.end method

.method public static sendLockWallpaperBroadcast(Landroid/content/Context;Z)V
    .locals 1

    .line 1194
    new-instance v0, Lcom/miui/home/launcher/WallpaperUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/WallpaperUtils$$ExternalSyntheticLambda1;-><init>(ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentSearchBarAreaColorMode(I)V
    .locals 0

    .line 135
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentStatusBarAreaColorMode(I)V
    .locals 0

    .line 271
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentWallpaperColorMode(I)V
    .locals 1

    .line 275
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    if-eq p0, v0, :cond_0

    .line 276
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIsUseDefaultIconFolder1X1()V

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIsUseDefaultIconFolderLarge()V

    :cond_0
    return-void
.end method

.method public static setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 406
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(ZZ)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    .line 408
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setFolderPreviewShow(Z)V

    move v2, v0

    .line 409
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 410
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 411
    instance-of v4, v3, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_0

    .line 412
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemIcon;->refreshBackground()V

    .line 414
    :cond_0
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 415
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    .line 417
    :cond_1
    instance-of v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v4, :cond_2

    .line 418
    check-cast v3, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    .line 419
    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 422
    invoke-virtual {v3}, Lcom/miui/maml/component/MamlView;->forceTick()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    move p2, v0

    .line 427
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 428
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    instance-of v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v3, :cond_4

    .line 430
    check-cast v2, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onPause()V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 433
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result p2

    if-nez p2, :cond_6

    move p2, v1

    goto :goto_2

    :cond_6
    move p2, v0

    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(ZZ)V

    .line 434
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-nez p1, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    return-void
.end method

.method private static setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V
    .locals 6

    .line 586
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 590
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    .line 592
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setIsCurrentWallpaperScrollable(Z)V
    .locals 0

    .line 283
    sput-boolean p0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return-void
.end method

.method public static setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    .line 1173
    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setLockScreenShowLiveWallpaper(Z)V
    .locals 2

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard_show_livewallpaper"

    .line 379
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 381
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_wallpaper_provider_authority"

    const-string v1, "com.miui.home.none_provider"

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z
    .locals 3

    .line 1013
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1017
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1018
    monitor-exit v0

    return v1

    .line 1020
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1021
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1023
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/system/theme/lock_wallpaper"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1024
    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1026
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1027
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaper(Landroid/net/Uri;Z)Z
    .locals 7

    .line 1045
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1047
    monitor-exit v0

    return v2

    .line 1048
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 1049
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;

    move-result-object v3

    .line 1050
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1052
    monitor-exit v0

    return v2

    .line 1054
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 1055
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1057
    :cond_3
    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/WallpaperUtils;->autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1058
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1059
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    .line 1164
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z
    .locals 7

    .line 953
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_4

    .line 955
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 959
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "lockWallpaperBack"

    .line 960
    invoke-virtual {v0, v3}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 962
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 964
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 968
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 969
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 971
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 972
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 973
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 975
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return v1
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_path"

    .line 922
    invoke-static {v0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {p0, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
    .locals 2

    .line 927
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/WallpaperUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils$1;-><init>(Ljava/lang/String;Z)V

    .line 947
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    .line 948
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 949
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setMiuiWallpaperType(Ljava/lang/String;)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMiuiWallpaperType:miuiWallpaperType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_WallpaperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sput-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mCurrentMiuiWallpaperType:Ljava/lang/String;

    return-void
.end method

.method public static setProviderClosedByUser(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_key_provider_closed"

    .line 1182
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wallpaper"

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 394
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 400
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 401
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 296
    :cond_1
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    goto :goto_1

    .line 298
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    :goto_1
    return-void
.end method

.method public static updateScreenMode()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    return-void
.end method

.method public static useCache()V
    .locals 1

    .line 176
    sget-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsInResume:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->mIsUserCache:Z

    return-void
.end method

.method public static varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V
    .locals 4

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 244
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 245
    instance-of v3, v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v3, :cond_0

    .line 246
    check-cast v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {v2}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
