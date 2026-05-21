.class public Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;
.super Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;
.source "WallpaperManagerCompatVT.java"


# instance fields
.field private mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

.field private mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$EeL-InYlb9-o9ld8xikrlyKKv1o(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->lambda$initMiuiWallpaperManager$0(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private adaptToWallpaperAsync()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    .line 74
    sget-object p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->TAG:Ljava/lang/String;

    const-string v0, "adaptToWallpaperAsync: launcher is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object p0

    if-nez p0, :cond_1

    .line 79
    sget-object p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->TAG:Ljava/lang/String;

    const-string v0, "adaptToWallpaperAsync: desktopWallpaperManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method

.method private convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object p0

    .line 42
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 47
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    .line 48
    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;-><init>(IIII)V

    return-object v1
.end method

.method private getSingleWhichForWallpaper()I
    .locals 1

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$initMiuiWallpaperManager$0(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 2

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 56
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->isHasWallpaperSDK:Z

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isHasWallpaperSDK()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isHasWallpaperSDK:Z

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isHasWallpaperSDK:Z

    if-eq p2, v0, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIsReload(Z)V

    :cond_0
    if-eqz p1, :cond_2

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    .line 63
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz p2, :cond_2

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    :cond_1
    invoke-virtual {p2, p1, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->adaptToWallpaperAsync()V

    return-void
.end method


# virtual methods
.method public couldSetEffectToDesktop()Z
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->couldSetEffectToDesktop()Z

    move-result p0

    return p0

    .line 134
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->TAG:Ljava/lang/String;

    const-string v0, "couldSetEffectToDesktop:mMiuiWallpaperManager == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getMiuiWallpaperType()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->getSingleWhichForWallpaper()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperPreview()Landroid/graphics/Bitmap;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    move v1, v0

    .line 99
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-virtual {p0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperPreview(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public initMiuiWallpaperManager(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->staticDestroy()V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    invoke-static {v0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->init(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V

    return-void
.end method

.method public isMiuiWallpaperComponentUsing()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->getSingleWhichForWallpaper()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isMiuiWallpaperComponentUsing(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->staticDestroy()V

    return-void
.end method
