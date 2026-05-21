.class public Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic;
.super Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.source "WallpaperCompatStatic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 1

    const-string p0, "Launcher_StaticWallpaper"

    const-string v0, "current wallpaper is static wallpaper"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getWallpaperPreview()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getCurrentWallpaper(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method
