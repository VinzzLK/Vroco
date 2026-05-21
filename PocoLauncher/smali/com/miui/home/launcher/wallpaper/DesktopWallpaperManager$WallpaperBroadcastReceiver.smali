.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive broadcast: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Launcher_DesktopWallpaperManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "miui.gallery.action.WALLPAPER_CHANGED"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    :cond_1
    return-void
.end method
